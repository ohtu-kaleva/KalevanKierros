class Enrollment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :enrollment_datas

  def seconds_to_human_form
    if time
      Time.at(time).gmtime.strftime('%R:%S')
    else
      'Ei aikaa'
    end
  end
end
