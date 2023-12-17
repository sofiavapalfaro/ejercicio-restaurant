class DishesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = @restaurant.dishes.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.restaurant_id = params[:restaurant_id]
    if @dish.save
      redirect_to @dish.restaurant, notice: 'Dish created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def dish_params
    params.require(:dish).permit(:name, :price, :description)
  end
end
