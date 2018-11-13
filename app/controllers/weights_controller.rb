class WeightsController < ApplicationController
  def index
    @weights = current_user.weights
    @weight = Weight.new


  end

  def show
    @weight = Weight.find_by(id: params[:id])
    
  end

  def edit
    @weight = Weight.find_by(id: params[:id])
  end
  def update
    weight = Weight.find_by(id: params[:id])
    weight.update(weight_params)
    redirect_to weight_path(weight)
  end
  def new
    @weight = Weight.new
  end
  def destroy
    weight = Weight.find_by(id: params[:id])
    weight.destroy
    redirect_to weights_path()
  end
  def create 
    w = current_user.weights.create(weight_params)
    redirect_to weight_path(w) 
  end 
  private 
  def weight_params
    params.require(:weight).permit(:amount, :date, :comment, :user_id)
  end 

end
