class ExercisesController < ApplicationController
  def index
    @exercises = current_user.exercises
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
  end


  def new
    @exercise = Exercise.new
  end
  def create
    
  exercise_params = params.require(:exercise).permit(:name, :minute)
    @exercise = current_user.exercises.create(exercise_params)
    redirect_to @exercise
  end
end
