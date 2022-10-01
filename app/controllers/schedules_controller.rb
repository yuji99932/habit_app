class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:edit, :show]
  before_action :move_to_sign
  def index
    @nickname = current_user.nickname
    @schedules = current_user.schedules
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    Schedule.create(schedule_params)
  end
  
  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to(root_path)
  end
  
  def edit
  end
  
  def update
    schedule = Schedule.find(params[:id])
    schedule.update(schedule_params)
  end
  
  def show
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:task1, :task2, :task3, :task4, :task5, :task6).merge(user_id: current_user.id)
  end
  
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
  
  def move_to_sign
    unless user_signed_in?
      redirect_to(new_user_session_path)
    end
  end
end