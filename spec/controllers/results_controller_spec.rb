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
end
