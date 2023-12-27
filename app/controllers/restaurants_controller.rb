class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = 'Restaurant was successfully created!'
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @restaurant.update(restaurant_params)
      flash[:notice] = 'Restaurant was succesfully updated!'
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant.dishes.destroy_all
    @restaurant.hours.destroy_all
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :adress, :category, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.nil?
      flash[:alert] = "Restaurant not found"
      redirect_to root_path
    end
  end
end
