class HoursController < ApplicationController
  def index
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @hour = @restaurant.hours.new
  end

  def create
    @hour = Hour.new(hour_params)
    @hour.restaurant_id = params[:restaurant_id]
    if @hour.save
      redirect_to @hour.restaurant
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def hour_params
    params.require(:hour).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end
end
