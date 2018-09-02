class ApplicationController < ActionController::Base

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    current_email.present?
  end

  def current_email
    session[:current_email]
  end

  def set_session
    session[:current_email] = params[:session][:email]
  end
end
