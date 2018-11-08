class WeightsController < ApplicationController
  def index
    @weights = Weight.all
  end

  def show
    @weight = Weight.find_by(id: params[:id])
  end

  def edit
    @weight = Weight.find_by(id: params[:id])
  end

  def new
    @weight = Weight.new
  end
end
