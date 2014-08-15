require 'spec_helper'

include SigninHelper

describe UsersController do
  describe 'Activating user' do
    let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                  password_confirmation: 'Salainen1', active: false,
                  activation_token: 'abcd1' }

    context 'with correct info' do
      it 'activates user' do
        post :activate, id: user.id, activation_token: 'abcd1',
             username: 'Tyhjis', password: 'Salainen1'

        db_user = User.find_by id: user.id
        expect(db_user.active).to eql(true)
      end

      it 'creates new statistic entry' do
        expect(Statistic.count).to eql(0)

        post :activate, id: user.id, activation_token: 'abcd1',
             username: 'Tyhjis', password: 'Salainen1'

        expect(Statistic.count).to eql(1)
        expect(Statistic.last.user_id).to eql(user.id)
      end
    end

    context 'does not activate user' do
      it 'with incorrect token' do
        post :activate, id: user.id, activation_token: 'abcd',
          username: 'Tyhjis', password: 'Salainen1'

        db_user = User.find_by id: user.id
        expect(db_user.active).not_to eql(true)
      end

      it 'with incorrect password' do
        post :activate, id: user.id, activation_token: 'abcd1',
          username: 'Tyhjis', password: 'oaeu'

        db_user = User.find_by id: user.id
        expect(db_user.active).not_to eql(true)
      end

      it 'with incorrect id' do
        post :activate, id: 690, activation_token: 'abcd1',
          username: 'Tyhjis', password: 'Salainen1'

        db_user = User.find_by id: user.id
        expect(db_user.active).to eql false
      end
    end
  end
end
