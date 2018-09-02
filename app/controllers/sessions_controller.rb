class SessionsController < ApplicationController

  def new
  end

  def create
    set_session
    redirect_to root_path
  end
end
