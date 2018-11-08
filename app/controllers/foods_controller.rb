class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find_by(id: params[:id])
  end

  def edit
    @food = Food.find_by(id: params[:id])
  end

  def new
    @food = Food.new
  end
end
