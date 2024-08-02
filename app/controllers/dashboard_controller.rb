class DashboardController < ApplicationController

  def index

    user_id = session[:user_id]
    if !user_id.nil?
      @activities = Activity.where(user_id: session[:user_id])
      @totalKm = 0
      @totalTime = 0

      @activities.each do |activity|
        @totalKm += activity.distance
        @totalTime += activity.time_activity
      end

      @averagePace = @totalTime/@totalKm

    else
      redirect_to login_path
    end

  end


end
