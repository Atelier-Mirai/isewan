class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    @user = login(params[:name], params[:password])

    if @user
      redirect_to(root_path, notice: "login successful")
    else
      flash.now[:alert] = "Login failed"
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: "Logged out!")
  end
end
