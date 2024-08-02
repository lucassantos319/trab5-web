class ActivityController < ApplicationController

  def new
    @newActivity = Activity.new
  end

  def create
    @newActivity = Activity.new(activity_params)
    @newActivity.user_id = session[:user_id]
    @newActivity.created_at = DateTime.now()
    if @newActivity.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
  end

  def activity_params
    params.permit(:description, :distance, :time_activity)
  end

  def destroy
  end

end
