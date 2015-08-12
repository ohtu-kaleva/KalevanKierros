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
    @events = Event.where(open: true)
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
        event_id = 10 #= viite[7..viite.length-2]
        user = User.find_by kk_number: kk_number.to_i
        if user
          enrollment_id = user.find_enrollment_id_by_event(event_id)
          if enrollment_id
            enrollment = Enrollment.find enrollment_id
            if enrollment
              event = enrollment.event
              if enrollment.created_at <= event.end_date
                expected_value = event.price
              else
                expected_value = event.second_price
              end
              if event.sport_type == "RowingEvent"
                if enrollment.enrollment_datas.find_by(name: 'Tyyli').value == "Vuoro"
                  expected_value *= 2
                end
              end
              payment_amount = result_hash[:mr_euroa].tr(',', '.').to_f * 100.0
              if expected_value == payment_amount
                enrollment.update_payments
              end
            end
          end
        end
      end
    end
    redirect_to :root, flash: { success: "Makstiedot on luettu onnistuneesti." }
  end
end
