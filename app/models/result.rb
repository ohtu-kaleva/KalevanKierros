class Result < ActiveRecord::Base
  validates :kk_number, :completed_events, :skiing_pos, :orienteering_pos, :marathon_pos, :skating_pos, :cycling_pos, :rowing_pos, numericality: { only_integer: true, allow_nil: true }
  validates :orienteering_pts, :orienteering_time, :marathon_time, :marathon_pts, :skating_pts, :skating_time, :skiing_pts, :skiing_time, :cycling_pts, :cycling_time, :rowing_pts, :rowing_time, numericality: true, allow_nil:true
  validates :name, :year, :city, presence: true

  def self.find_by_kk_number_and_year(number, year)
    Result.where(kk_number: number).where(year: year).first
  end
end
