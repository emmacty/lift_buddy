class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = current_user.workouts.all
  end

  def show
    @workout_exercise = WorkoutExercise.new
    @workout_exercise.workout = @workout
    @favorite = Favorite.new
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @user = current_user
    @workout.user = current_user
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to workout_path(@workout)
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @workout.destroy
    redirect_to workouts_path, status: :see_other
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:name, :date, :comment, :user_id)
  end
end
