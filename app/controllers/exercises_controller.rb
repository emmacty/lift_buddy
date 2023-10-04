class ExercisesController < ApplicationController
  def index
    @exercises = current_user.exercises.all.order(:name)
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @user = current_user
    @exercise.user = @user
    if @exercise.save
      redirect_to exercises_path
    else
      render "index", status: :unprocessable_entity
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path, status: :see_other
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name)
  end
end
