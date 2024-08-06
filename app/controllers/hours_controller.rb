class HoursController < ApplicationController
  before_action :set_restaurant
  before_action :set_hour, only: [:show, :edit, :update, :destroy]

  def index
    # List all hours for the restaurant
    @hours = @restaurant.hours
  end

  def show
  end

  def new
    @hour = @restaurant.hours.new
  end

  def create
    @hour = @restaurant.hours.new(hour_params)
    if @hour.save
      redirect_to restaurant_path(@restaurant), notice: 'Hours were successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @hour.update(hour_params)
      redirect_to restaurant_path(@restaurant), notice: 'Hours were successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hour.destroy
    redirect_to restaurant_path(@restaurant), notice: 'Hours were successfully deleted.'
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_hour
    @hour = @restaurant.hours.find(params[:id])
  end

  def hour_params
    params.require(:hour).permit(:monday, :monday_closing, :tuesday, :tuesday_closing, :wednesday, :wednesday_closing, :thursday, :thursday_closing, :friday, :friday_closing, :saturday, :saturday_closing, :sunday, :sunday_closing)
  end
end
