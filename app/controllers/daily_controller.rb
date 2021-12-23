class DailyController < ApplicationController
  before_action :set_daily, only:[:show,:edit,:update,:destroy]
  def new
    @daily =Daily.new
  end
  
  def create
    @daily = Daily.new(daily_params)
    if @daily.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @daily.update(daily_params)
      redirect_to daily_path
    else
      render :edit 
    end
  end

  def show
    
  end

  def destroy
    @daily.destroy
    redirect_to root_path
  end

  private

  def daily_params
    params.require(:daily).permit(:tweet).merge(user_id: current_user.id)
  end

  def set_daily
    @daily = Daily.find(params[:id])
  end
end
