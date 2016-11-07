module InitResultsEntry
  def init_results_entry(user, only_relay=false)
    group_name = nil
    if user.group
      group_name = user.group.name
    end
    relay_group_name = nil
    if user.relay_group
      relay_group_name = user.relay_group.name
    end
    year = AppSetting.find_by name: 'KkYear'
    init_params = { name: user.full_name, city: user.city, group: group_name, year: year.value, kk_number: user.kk_number, series: user.define_series, completed_events: 0, relay_group: relay_group_name, ignore_on_statistics: only_relay }
    result = Result.new init_params
    result.save
  end
end
