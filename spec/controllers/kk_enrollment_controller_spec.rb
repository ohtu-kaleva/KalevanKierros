require 'spec_helper'

include SigninHelper

describe KkEnrollmentsController do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                password_confirmation: 'Salainen1' }

  before :each do
    session[:user_id] = user.id
  end

  context 'with closed enrollment' do
    it 'redirects to root' do
      post :create, id: user.id

      expect(flash[:error]).to eq 'Kierrokselle ei voi ilmoittautua'
      expect(response).to redirect_to root_path
    end
  end

  context 'with open enrollment' do
    before :each do
      AppSetting.create name: 'KkEnrollmentStatus', value: 'open'
    end

    it 'redirects to signin with unsigned user' do
      expect(user.kk_enrollment).to be_nil

      session[:user_id] = nil
      post :create, id: user.id

      expect(flash[:error]).not_to eq 'Kierrokselle ei voi ilmoittautua'
      response.should_not redirect_to root_path
      response.should redirect_to signin_path
    end
  end

  context 'when enrolled' do
    before :each do
      FactoryGirl.create :kk_enrollment, user: user
    end

    it 'redirects if trying to enroll again' do
      post :create, id: user.id
      expect(flash[:error]).to eq 'Olet jo ilmoittautunut kierrokselle'
      expect(response).to redirect_to root_path
    end

    it 'does not delete non-existing enrollment' do
      expect(KkEnrollment.count).to eq 1
      delete :destroy, id: 2345345

      expect(flash[:success]).not_to eq 'Ilmoittautuminen poistettu'
      expect(KkEnrollment.count).to eq 1
    end

    it 'destroys enrollment' do
      expect(user.kk_enrollment).not_to be_nil
      delete :destroy, id: user.kk_enrollment.id

      expect(flash[:success]).to eq 'Ilmoittautuminen poistettu'
      expect(user.reload.kk_enrollment).to be_nil
    end

    context 'updating enrollment' do
      it 'with correct info succeeds' do
        expect(user.kk_enrollment.paid).to eq(false)

        put :update, id: user.kk_enrollment.id, kk_enrollment: { paid: true }

        response.should_not redirect_to root_path
        expect(flash[:success]).to eq 'Ilmoittautuminen päivitettiin onnistuneesti'
        expect(user.reload.kk_enrollment.paid).to eq(true)
        expect(response).to redirect_to kk_enrollments_path
      end

      it 'with non-existing id does not succeed' do
        put :update, id: 1251521, kk_enrollment: { paid: true }

        response.should redirect_to kk_enrollments_path
        expect(flash[:success]).not_to eq 'Ilmoittautuminen päivitettiin onnistuneesti'
      end
    end
  end
end
