json.array!(@results) do |result|
  json.extract! result, :id, :name, :city, :group, :year, :series, :orienteering_pts, :skiing_pts, :marathon_pts, :rowing_pts, :cycling_pts, :skating_pts, :orienteering_time, :skiing_time, :marathon_time, :rowing_time, :cycling_time, :skating_time, :orienteering_pos, :skiing_pos, :marathon_pos, :rowing_pos, :cycling_pos, :skating_pos, :pts_sum, :completed_events
  json.url result_url(result, format: :json)
end
