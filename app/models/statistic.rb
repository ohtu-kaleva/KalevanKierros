class Statistic < ApplicationRecord
    validates :kk_number, presence: true
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :city, presence: true
    validates :birth_year, presence: true
end
