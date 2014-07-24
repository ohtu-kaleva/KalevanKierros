class Result < ActiveRecord::Base

  def self.find_by_kk_number_and_year(number, year)
    Result.where(kk_number: number).where(year: year).first
  end

end
