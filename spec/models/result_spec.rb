require 'spec_helper'

describe Result do

  describe "method find_by_kk_number_and_year" do
    let!(:result) { FactoryGirl.create :result }
    let!(:result_2) { FactoryGirl.create :result, year:2013 }

    it "returns the correct relation" do
      res = Result.find_by_kk_number_and_year(12345, 2014)
      expect(res).to eq(result)
    end

    it "returns another correct relation" do
      res = Result.find_by_kk_number_and_year(12345, 2013)
      expect(res).to eq(result_2)
    end

    it "returns nil if not found" do
      res = Result.find_by_kk_number_and_year(12345, 2012)
      expect(res).to be(nil)
    end
  end

  describe "result fields" do

    it "sets name field correctly" do
      res = Result.new(name: 'Kristian Hansson')
      expect(res.name).to eq('Kristian Hansson')
    end

    it "sets city field correctly" do
      res = Result.new(city: 'Helsinki')
      expect(res.city).to eq('Helsinki')
    end

    it "sets group field correctly" do
      res = Result.new(group: 'Kuntoilevat käpistelijät')
      expect(res.group).to eq('Kuntoilevat käpistelijät')
    end

    it "sets completed_events field correctly" do
      res = Result.new(completed_events: 6)
      expect(res.completed_events).to eq(6)
    end
  end

  describe "validations" do
    describe "with required parameters" do

      it "should be valid" do
        res = Result.new(name:'Kristian Hansson', city:'Helsinki', year:2014)
        expect(res).to be_valid
      end
    end

    describe "without required parameters" do
      it "should not be valid" do
        res = Result.new
        expect(res).not_to be_valid
      end
    end

    describe "without proper integer values" do
      it "kk_number should not be valid" do
        res = Result.new(name:'Kristian Hansson', city:'Helsinki', year:2014, kk_number:1.6)
        expect(res).not_to be_valid
      end

      it "completed events should not be valid" do
        res = Result.new(name:'Kristian Hansson', city:'Helsinki', year:2014, completed_events:5.5)
        expect(res).not_to be_valid
      end
    end

    describe "with proper integer values" do
      it "kk_number should be valid" do
        res = Result.new(name: 'Kristian Hansson', city:'Helsinki', year:2014, kk_number:12345)
        expect(res).to be_valid
      end

      it "completed events should be valid" do
        res = Result.new(name:'Kristian Hansson', city:'Helsinki', year:2014, completed_events:5)
        expect(res).to be_valid
      end
    end
  end


end
