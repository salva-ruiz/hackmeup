class PagesController < ApplicationController

  def health_check
    @timestamp = Time.current
  end

  def welcome
  end

  def login
  end

  def check_login
    render json: {status: 'error', code: 401, 'message': 'User or password not found'}, status: :not_found
  end

  def sign_in
    email = params[:email]
    password = params[:password]
    users = User.where(email_address: email).where(password: password)
    if users.empty?
      redirect_to login_url, alert: 'User or password not found' 
    else
      redirect_to welcome_url, notice: 'Bienvenido'
    end
  end

end
