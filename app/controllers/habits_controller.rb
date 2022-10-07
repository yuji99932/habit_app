class HabitsController < ApplicationController
  def index
    @schedules = current_user.schedules
  end
  
  def new
    @habit = Schedule.new
  end
  
  def create
    Habit.create(schedule_params)
    redirect_to(root_path)
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:content1, :content2, :content3, :content4).merge(user_id: current_user.id)
  end
end
