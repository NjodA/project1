class FoodsController < ApplicationController
  def index
    @foods = current_user.foods
  end

  def show
    @food = Food.find_by(id: params[:id])
  end


  def new
    @food = Food.new
  end
  def create
  food_params = params.require(:food).permit(:name, :image, :calories)
    @food = current_user.foods.create(food_params)
    redirect_to @food
  end
  
end
