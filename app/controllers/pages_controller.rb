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

end
