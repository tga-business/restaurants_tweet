class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:[:show,:edit,:update,:destroy]
  before_action :authenticate_user!, except: [:index,:show]

   before_action :move_to_index, except:[:index, :new, :create,:show]
  def index
    @restaurant =Restaurant.includes(:user).order("created_at DESC")
  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path
    else
      render :edit 
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to root_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :near_station, :image, :appeal, :smoking, :opening_id, :closing_id, :holiday).merge(user_id: current_user.id)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def move_to_index

    unless user_signed_in? && @restaurant.user_id == current_user.id
      redirect_to action: :index
    end
  end
end
