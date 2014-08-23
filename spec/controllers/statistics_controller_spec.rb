require 'spec_helper'

include SigninHelper

describe StatisticsController do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                                   password_confirmation: 'Salainen1',
                                   first_name: 'Kristian' }
  before :each do
    FactoryGirl.create(:statistic, kk_number: 3300001, last_name:
                       "User1", first_name: "User1")

    FactoryGirl.create(:empty_result, kk_number: 3300001, name: "User1 \
                       User1", orienteering_pts: 400, completed_events: 6,
                       pts_sum: 200)
    session[:user_id] = user.id
  end

  context 'Does not update statistics' do
    it 'without year' do
      post :update_statistics, year: ''
      expect(flash[:error]).to eq 'Tilastojen päivitys ei onnistunut.'
      expect(Statistic.first.pts_sum).to eq 0.0
    end

    it 'with incorrect year' do
      post :update_statistics, year: '9999'
      expect(flash[:error]).to eq 'Tilastojen päivitys ei onnistunut.'
      expect(Statistic.first.pts_sum).to eq 0.0
    end
  end

  it 'With correct year updates statistic correctly' do
    post :update_statistics, year: '2014'
    expect(Statistic.first.pts_sum).to eq 200
  end
end
