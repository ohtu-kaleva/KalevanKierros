class StaticPagesController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:kk_enrollment, :cover_image, :change_cover_image, :import_payments, :import_payments_file]

  def home
    @cover_image_path = AppSetting.find_by name: 'cover_image_path'
  end

  def cover_image
    @images = Dir.glob("app/assets/images/*")
  end

  def change_cover_image
    image_info = AppSetting.find_by name: 'cover_image_path'
    image_info.value = params[:image_path][18..-1]
    image_info.save
    redirect_to root_path
  end

  def kk_enrollment
    @years = Result.uniq.pluck :year
    @account_number = AppSetting.find_by name: 'KkAccountNumber'
    @kk_year = AppSetting.find_by name: 'KkYear'
    @deadline = AppSetting.find_by name: 'Enrollment_Deadline'
  end

  def ilmoittautuminen
    
  end

  def import_payments_file
    file = params[:file]
    if file.nil?
      redirect_to :root, flash: { error: "Ei valittua tiedostoa!" }
      return
    end
    CSV.foreach(file.path, encoding: 'iso-8859-1', headers: true, header_converters: :symbol, col_sep: ";") do |row|
      result_hash = row.to_hash
      if result_hash[:selitys] == "VIITESIIRTO"
        viite = result_hash[:viite].to_s.delete(" ")
        kk_number = viite[0..6]
        event_id = viite[7..viite.length-2]
        user = User.find_by kk_number: kk_number.to_i
        if user
          if event_id.length > 0
            enrollment_id = user.find_enrollment_id_by_event(event_id)
            if enrollment_id
              enrollment = Enrollment.find enrollment_id
              if enrollment
                enrollment.paid = (result_hash[:mr_euroa].tr(',', '.').to_f * 100.0).to_i
                enrollment.save
              end
            end
          else
            kk_enrollment = user.kk_enrollment
            if kk_enrollment
                kk_enrollment.paid = (result_hash[:mr_euroa].tr(',', '.').to_f * 100.0).to_i
                kk_enrollment.save
            end
          end
        end
      end
    end
    redirect_to :root, flash: { success: "Makstiedot on luettu onnistuneesti." }
  end
end