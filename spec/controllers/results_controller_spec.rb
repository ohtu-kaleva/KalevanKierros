require 'spec_helper'

describe ResultsController do

  describe "search filter should be formed correctly" do

    it "should form_gender_age_filter correctly with parameters all/all" do
      filter = controller.form_gender_age_filter("all", "all")
      expect(filter.count).to eq(28)
      filter.should include("MAL22", "M", "M40", "M50", "M55", "M60", "M65", "M70", "M75", "M80", "M85", "M90", "M95", "M100",
                            "NAL22", "N", "N40", "N50", "N55", "N60", "N65", "N70", "N75", "N80", "N85", "N90", "N95", "N100")
    end

    it "should form_gender_age_filter correctly with parameters M/all" do
      filter = controller.form_gender_age_filter("M", "all")
      expect(filter.count).to eq(14)
      filter.should include("MAL22", "M", "M40", "M50", "M55", "M60", "M65", "M70", "M75", "M80", "M85", "M90", "M95", "M100")
    end

    it "should form_gender_age_filter correctly with parameters N/all" do
      filter = controller.form_gender_age_filter("N", "all")
      expect(filter.count).to eq(14)
      filter.should include("NAL22", "N", "N40", "N50", "N55", "N60", "N65", "N70", "N75", "N80", "N85", "N90", "N95", "N100")
    end

    it "should form_gender_age_filter correctly with parameters M/40" do
      filter = controller.form_gender_age_filter("M", "40")
      expect(filter.count).to eq(1)
      filter.should include("M40")
    end

    it "should form_gender_age_filter correctly with parameters N/AL22" do
      filter = controller.form_gender_age_filter("N", "AL22")
      expect(filter.count).to eq(1)
      filter.should include("NAL22")
    end

    it "should form_gender_age_filter correctly with parameters M/yleinen" do
      filter = controller.form_gender_age_filter("M", "yleinen")
      expect(filter.count).to eq(1)
      filter.should include("M")
    end
  end

  it "should return existing age series correctly" do
    FactoryGirl.create(:result, series: "MAL22")
    FactoryGirl.create(:result, series: "N")
    FactoryGirl.create(:result, series: "N")
    FactoryGirl.create(:result, series: "M40")
    FactoryGirl.create(:result, series: "N40")
    FactoryGirl.create(:result, series: "M55")
    FactoryGirl.create(:result, series: "M55")
    FactoryGirl.create(:result, series: "M55")
    FactoryGirl.create(:result, series: "M65")
    FactoryGirl.create(:result, series: "N80")
    result = controller.existing_age_series(Date.today.year)
    expect(result.count).to eq(6)
    result.should include("AL22", "yleinen", "40", "55", "65", "80")
  end

  it "should calculate the sum of four best points correctly" do
    FactoryGirl.create(:result, series: "MAL22", group: "testi", marathon_pts: 900.11, rowing_pts: 922.06, skiing_pts: 880.44, orienteering_pts: 932.81, cycling_pts: 921.81, skating_pts: 953.46)
    FactoryGirl.create(:result, series: "N", group: "testi", marathon_pts: 767.56, rowing_pts: 907.99, skiing_pts: nil, orienteering_pts: 789.03, cycling_pts: 826.54, skating_pts: 791.61)
    FactoryGirl.create(:result, series: "M", group: "testi", marathon_pts: 755.43, rowing_pts: nil, skiing_pts: nil, orienteering_pts: 855.51, cycling_pts: 886.63, skating_pts: 34.32)
    FactoryGirl.create(:result, series: "N40", group: "testi", marathon_pts: 835.44, rowing_pts: 823.40, skiing_pts: 738.48, orienteering_pts: nil, cycling_pts: 231.42, skating_pts: 886.83)
    FactoryGirl.create(:result, series: "M55", group: "testi", marathon_pts: 500.43, rowing_pts: nil, skiing_pts: 598.46, orienteering_pts: 782.90, cycling_pts: nil, skating_pts: 643.6)
    FactoryGirl.create(:result, series: "M65", group: "testi", marathon_pts: 654.43, rowing_pts: nil, skiing_pts: 827.81, orienteering_pts: 782.12, cycling_pts: 870.55, skating_pts: 882.88)
    FactoryGirl.create(:result, series: "M55", group: "joku muu", marathon_pts: 155.33, rowing_pts: 0, skiing_pts: 883.88, orienteering_pts: nil, cycling_pts: 424.11, skating_pts: 723.2)
    FactoryGirl.create(:result, series: "M40", group: "joku muu", marathon_pts: 1000, rowing_pts: 342.43, skiing_pts: 353.34, orienteering_pts: 745.43, cycling_pts: 543.76, skating_pts: 655.98)
    FactoryGirl.create(:result, series: "N", group: nil, marathon_pts: nil, rowing_pts: 1000, skiing_pts: 200.12, orienteering_pts: 654.00, cycling_pts: 454.22, skating_pts: 353.76)
    FactoryGirl.create(:result, series: "N80", group: "kolmas", marathon_pts: 354.43, rowing_pts: 533.0, skiing_pts: nil, orienteering_pts: nil, cycling_pts: nil, skating_pts: 923.22)
    sum_pts_test_group = controller.sum_of_four_best_points("testi", 2014)
    expect(sum_pts_test_group).to be_within(0.1).of(19337.73)
  end

  it "should check total events correctly" do
    result = FactoryGirl.create(:result, series: "MAL22", group: "testi", marathon_pts: 900.11, rowing_pts: nil, skiing_pts: 880.44, orienteering_pts: nil, cycling_pts: 921.81, skating_pts: 953.46)
    totals = controller.check_total_events(result)
    expect(totals[:total_events]).to eq(4)
    expect(totals[:total_points]).to be_within(0.1).of(3655.82)
  end

  it "should insert results correctly for event" do
    result = Result.new
    result.kk_number = 10000
    result.year = 2014
    result.city = "Helsinki"
    result.name = "testi"
    result.save
    controller.insert_result_for_event("SkatingEvent", 10000, 2014, 1000, 3647.43, 1, nil)
    result = Result.last
    expect(result.skating_pts).to be_within(0.1).of(1000)
    expect(result.skating_time).to be_within(0.1).of(3647.43)
    expect(result.skating_pos).to eq(1)
    expect(result.completed_events).to eq(1)
    expect(result.pts_sum).to be_within(0.1).of(1000)
    controller.insert_result_for_event("SkiingEvent", 10000, 2014, 244.42, 6657.86, 75, "Vapaa")
    result = Result.last
    expect(result.skiing_pts).to be_within(0.1).of(244.42)
    expect(result.skiing_time).to be_within(0.1).of(6657.86)
    expect(result.skiing_pos).to eq(75)
    expect(result.skiing_style).to eq("Vapaa")
    expect(result.completed_events).to eq(2)
    expect(result.pts_sum).to be_within(0.1).of(1244.42)
    controller.insert_result_for_event("RunningEvent", 10000, 2014, 865.53, 9654.43, 34, "Maraton")
    result = Result.last
    expect(result.marathon_pts).to be_within(0.1).of(865.53)
    expect(result.marathon_time).to be_within(0.1).of(9654.43)
    expect(result.marathon_pos).to eq(34)
    expect(result.marathon_style).to eq("Maraton")
    expect(result.completed_events).to eq(3)
    expect(result.pts_sum).to be_within(0.1).of(2109.95)
    controller.insert_result_for_event("RowingEvent", 10000, 2014, 933.33, 1647.43, 11, "Yksin")
    result = Result.last
    expect(result.rowing_pts).to be_within(0.1).of(933.33)
    expect(result.rowing_time).to be_within(0.1).of(1647.43)
    expect(result.rowing_pos).to eq(11)
    expect(result.rowing_style).to eq("Yksin")
    expect(result.completed_events).to eq(4)
    expect(result.pts_sum).to be_within(0.1).of(3043.28)
    controller.insert_result_for_event("CyclingEvent", 10000, 2014, 654.3, 4547.36, 65, nil)
    result = Result.last
    expect(result.cycling_pts).to be_within(0.1).of(654.3)
    expect(result.cycling_time).to be_within(0.1).of(4547.36)
    expect(result.cycling_pos).to eq(65)
    expect(result.completed_events).to eq(5)
    expect(result.pts_sum).to be_within(0.1).of(3697.58)
    controller.insert_result_for_event("OrienteeringEvent", 10000, 2014, 213.43, 8255.76, 214, nil)
    result = Result.last
    expect(result.orienteering_pts).to be_within(0.1).of(213.43)
    expect(result.orienteering_time).to be_within(0.1).of(8255.76)
    expect(result.orienteering_pos).to eq(214)
    expect(result.completed_events).to eq(6)
    expect(result.pts_sum).to be_within(0.1).of(3911.01)
  end

  it "should not apply rowing penalty if male rowing with male" do
    user = FactoryGirl.create(:user, gender: 'M')
    enrollment = FactoryGirl.create(:complete_enrollment, :rowing_with_male)
    enrollment.user_id = user.id
    enrollment.save
    enrollment = Enrollment.last
    value = controller.female_penalty_applied?(enrollment)
    expect(value).to be_false
  end

  it "should not apply rowing penalty if male rowing with female" do
    user = FactoryGirl.create(:user, gender: 'M')
    enrollment = FactoryGirl.create(:complete_enrollment, :rowing_with_female)
    enrollment.user_id = user.id
    enrollment.save
    enrollment = Enrollment.last
    value = controller.female_penalty_applied?(enrollment)
    expect(value).to be_false
  end

  it "should not apply rowing penalty if female rowing with female" do
    user = FactoryGirl.create(:user, gender: 'F')
    enrollment = FactoryGirl.create(:complete_enrollment, :rowing_with_female)
    enrollment.user_id = user.id
    enrollment.save
    enrollment = Enrollment.last
    value = controller.female_penalty_applied?(enrollment)
    expect(value).to be_false
  end

  it "should apply rowing penalty if female rowing with male" do
    user = FactoryGirl.create(:user, gender: 'F')
    enrollment = FactoryGirl.create(:complete_enrollment, :rowing_with_male)
    enrollment.user_id = user.id
    enrollment.save
    enrollment = Enrollment.last
    value = controller.female_penalty_applied?(enrollment)
    expect(value).to be_true
  end

  it "should return unscaled times correctly" do
    event = FactoryGirl.create(:complete_event, :skating)
    user1 = FactoryGirl.create(:user, kk_number: '2001', username: 'lol1')
    user2 = FactoryGirl.create(:user, kk_number: '2002', username: 'lol2')
    user3 = FactoryGirl.create(:user, kk_number: '2003', username: 'lol3')
    user4 = FactoryGirl.create(:user, kk_number: '2004', username: 'lol4')
    enrollment1 = FactoryGirl.create(:complete_enrollment, :skating)
    enrollment1.user_id = user1.id
    enrollment1.event_id = event.id
    enrollment1.time = 4432.53
    enrollment1.save
    enrollment2 = FactoryGirl.create(:complete_enrollment, :skating)
    enrollment2.user_id = user2.id
    enrollment2.event_id = event.id
    enrollment2.time = 53256.4
    enrollment2.save
    enrollment3 = FactoryGirl.create(:complete_enrollment, :skating)
    enrollment3.user_id = user3.id
    enrollment3.event_id = event.id
    enrollment3.time = 42552.65
    enrollment3.save
    enrollment4 = FactoryGirl.create(:complete_enrollment, :skating)
    enrollment4.user_id = user4.id
    enrollment4.event_id = event.id
    enrollment4.time = nil
    enrollment4.save
    times = controller.unscaled_times(event)
    expect(times.count).to eq(4)
    expect(times[2001]).to eq(4432.53)
    expect(times[2002]).to eq(53256.4)
    expect(times[2003]).to eq(42552.65)
    expect(times[2004]).to be nil
  end

  it "should scale times correctly for running event" do
    event = FactoryGirl.create(:complete_event, :running, penalty_factor: 2.3)
    user1 = FactoryGirl.create(:user, kk_number: '2001', username: 'lol1')
    user2 = FactoryGirl.create(:user, kk_number: '2002', username: 'lol2')
    user3 = FactoryGirl.create(:user, kk_number: '2003', username: 'lol3')
    user4 = FactoryGirl.create(:user, kk_number: '2004', username: 'lol4')
    enrollment1 = FactoryGirl.create(:complete_enrollment, :running_half_marathon)
    enrollment1.user_id = user1.id
    enrollment1.event_id = event.id
    enrollment1.time = 2232.32
    enrollment1.save
    enrollment2 = FactoryGirl.create(:complete_enrollment, :running_marathon)
    enrollment2.user_id = user2.id
    enrollment2.event_id = event.id
    enrollment2.time = 3256.63
    enrollment2.save
    enrollment3 = FactoryGirl.create(:complete_enrollment, :running_half_marathon)
    enrollment3.user_id = user3.id
    enrollment3.event_id = event.id
    enrollment3.time = 42552.65
    enrollment3.save
    enrollment4 = FactoryGirl.create(:complete_enrollment, :running_marathon)
    enrollment4.user_id = user4.id
    enrollment4.event_id = event.id
    enrollment4.time = nil
    enrollment4.save
    scaled_times = controller.scale_times(event)
    expect(scaled_times.count).to eq(3)
    expect(scaled_times[2001][:time]).to be_within(0.1).of(5134.336)
    expect(scaled_times[2001][:style]).to eq('puolimaraton')
    expect(scaled_times[2002][:time]).to be_within(0.1).of(3256.63)
    expect(scaled_times[2002][:style]).to eq('maraton')
    expect(scaled_times[2003][:time]).to be_within(0.1).of(97871.095)
    expect(scaled_times[2003][:style]).to eq('puolimaraton')
  end

  it "should scale times correctly for skiing event" do
    event = FactoryGirl.create(:complete_event, :skiing, penalty_factor: 1.06)
    user1 = FactoryGirl.create(:user, kk_number: '2001', username: 'lol1')
    user2 = FactoryGirl.create(:user, kk_number: '2002', username: 'lol2')
    user3 = FactoryGirl.create(:user, kk_number: '2003', username: 'lol3')
    user4 = FactoryGirl.create(:user, kk_number: '2004', username: 'lol4')
    enrollment1 = FactoryGirl.create(:complete_enrollment, :skiing_freestyle)
    enrollment1.user_id = user1.id
    enrollment1.event_id = event.id
    enrollment1.time = 6436.76
    enrollment1.save
    enrollment2 = FactoryGirl.create(:complete_enrollment, :skiing_traditional)
    enrollment2.user_id = user2.id
    enrollment2.event_id = event.id
    enrollment2.time = 7575.33
    enrollment2.save
    enrollment3 = FactoryGirl.create(:complete_enrollment, :skiing_freestyle)
    enrollment3.user_id = user3.id
    enrollment3.event_id = event.id
    enrollment3.time = 1313.23
    enrollment3.save
    enrollment4 = FactoryGirl.create(:complete_enrollment, :skiing_freestyle)
    enrollment4.user_id = user4.id
    enrollment4.event_id = event.id
    enrollment4.time = 4233.355
    enrollment4.save
    scaled_times = controller.scale_times(event)
    expect(scaled_times.count).to eq(4)
    expect(scaled_times[2001][:time]).to be_within(0.1).of(6822.9656)
    expect(scaled_times[2001][:style]).to eq('Vapaa')
    expect(scaled_times[2002][:time]).to be_within(0.1).of(7575.33)
    expect(scaled_times[2002][:style]).to eq('Perinteinen')
    expect(scaled_times[2003][:time]).to be_within(0.1).of(1392.0238)
    expect(scaled_times[2003][:style]).to eq('Vapaa')
    expect(scaled_times[2004][:time]).to be_within(0.1).of(4487.3563)
    expect(scaled_times[2004][:style]).to eq('Vapaa')
  end

  it "should scale times correctly for rowing event" do
    event = FactoryGirl.create(:complete_event, :rowing, penalty_factor: 20.0, rowing_penalty: 12.0)
    user1 = FactoryGirl.create(:user, gender: 'M', kk_number: '2001', username: 'lol1')
    user2 = FactoryGirl.create(:user, gender: 'F', kk_number: '2002', username: 'lol2')
    user3 = FactoryGirl.create(:user, gender: 'F', kk_number: '2003', username: 'lol3')
    user4 = FactoryGirl.create(:user, gender: 'M', kk_number: '2004', username: 'lol4')
    enrollment1 = FactoryGirl.create(:complete_enrollment, :rowing_with_female)
    enrollment1.user_id = user1.id
    enrollment1.event_id = event.id
    enrollment1.time = 2144.66
    enrollment1.save
    enrollment2 = FactoryGirl.create(:complete_enrollment, :rowing_with_male)
    enrollment2.user_id = user2.id
    enrollment2.event_id = event.id
    enrollment2.time = 1243.35
    enrollment2.save
    enrollment3 = FactoryGirl.create(:complete_enrollment, :rowing)
    enrollment3.user_id = user3.id
    enrollment3.event_id = event.id
    enrollment3.time = 2523.63
    enrollment3.save
    enrollment4 = FactoryGirl.create(:complete_enrollment, :paddling)
    enrollment4.user_id = user4.id
    enrollment4.event_id = event.id
    enrollment4.time = 3533.54
    enrollment4.save
    scaled_times = controller.scale_times(event)
    expect(scaled_times.count).to eq(4)
    expect(scaled_times[2001][:time]).to be_within(0.1).of(2864.66)
    expect(scaled_times[2001][:style]).to eq('Vuoro')
    expect(scaled_times[2002][:time]).to be_within(0.1).of(3163.35)
    expect(scaled_times[2002][:style]).to eq('Vuoro')
    expect(scaled_times[2003][:time]).to be_within(0.1).of(2523.63)
    expect(scaled_times[2003][:style]).to eq('Yksin')
    expect(scaled_times[2004][:time]).to be_within(0.1).of(3533.54)
    expect(scaled_times[2004][:style]).to eq('Melonta')
  end

  it "should not scale times for other events" do
    event = FactoryGirl.create(:complete_event, :orienteering)
    user1 = FactoryGirl.create(:user, gender: 'M', kk_number: '2001', username: 'lol1')
    user2 = FactoryGirl.create(:user, gender: 'F', kk_number: '2002', username: 'lol2')
    user3 = FactoryGirl.create(:user, gender: 'F', kk_number: '2003', username: 'lol3')
    user4 = FactoryGirl.create(:user, gender: 'M', kk_number: '2004', username: 'lol4')
    enrollment1 = FactoryGirl.create(:complete_enrollment, :orienteering)
    enrollment1.user_id = user1.id
    enrollment1.event_id = event.id
    enrollment1.time = 2144.66
    enrollment1.save
    enrollment2 = FactoryGirl.create(:complete_enrollment, :orienteering)
    enrollment2.user_id = user2.id
    enrollment2.event_id = event.id
    enrollment2.time = 1243.35
    enrollment2.save
    enrollment3 = FactoryGirl.create(:complete_enrollment, :orienteering)
    enrollment3.user_id = user3.id
    enrollment3.event_id = event.id
    enrollment3.time = 2523.63
    enrollment3.save
    enrollment4 = FactoryGirl.create(:complete_enrollment, :orienteering)
    enrollment4.user_id = user4.id
    enrollment4.event_id = event.id
    enrollment4.time = 3533.54
    enrollment4.save
    scaled_times = controller.scale_times(event)
    expect(scaled_times.count).to eq(4)
    expect(scaled_times[2001][:time]).to be_within(0.1).of(2144.66)
    expect(scaled_times[2002][:time]).to be_within(0.1).of(1243.35)
    expect(scaled_times[2003][:time]).to be_within(0.1).of(2523.63)
    expect(scaled_times[2004][:time]).to be_within(0.1).of(3533.54)
  end
end
