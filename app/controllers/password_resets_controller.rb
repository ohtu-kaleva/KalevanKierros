class PasswordResetsController < ApplicationController

  before_action :set_user_or_redirect, only: [ :edit, :update ]

  def new
  end

  def edit
  end

  def create
    user = User.find_by username: params[:username], email: params[:email]
    if user
      user.generate_reset_token
      user.set_reset_time
      puts "#{user.reset_sent_at}"
      UserMailer.reset_password_email(user).deliver
      redirect_to :root, flash: { success: "Antamaasi sähköpostiosoitteeseen: #{user.email} on lähetetty viesti. Seuraa siinä näkyviä ohjeita." } and return
    end
    redirect_back(fallback_location: root_path, flash: { error: 'Käyttäjätunnus tai sähköposti ei täsmää olemassaolevia käyttäjiä.' }) and return
  end

  def update
    if @user.update password_reset_params
      @user.update_column :reset_token, nil
      @user.update_column :reset_sent_at, nil
      redirect_to :root, flash: { success: 'Salasanasi on vaihdettu. Voit nyt kirjautua sisään uuden salasanan avulla' } and return
    end
    redirect_back(fallback_location: root_path, flash: { error: 'Uusi salasanasi ei ollut tarpeeksi vahva.' })  and return
  end

  private

  def set_user_or_redirect
    @user = User.find_by id: params[:id], reset_token: params[:reset_token]
    if not @user
      redirect_to :root and return
    end
    if @user.reset_sent_at < 2.hours.ago
      redirect_to :root and return
    end
  end

  def password_reset_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end
