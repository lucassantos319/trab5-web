class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if !user.password.nil? && !params[:password].nil?
      if user.password == params[:password]
        session[:user_id] = user.id
        redirect_to root_path, notice: "Logged in successfully."
      else
        flash.now[:alert] = "Invalid email or password."
        render :new
      end
    else
      redirect_to root_path, notice: "Invalid email or password."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully."
  end
end
