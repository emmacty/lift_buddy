class WorkoutExercisesController < ApplicationController
  def create
    @workout_exercise = WorkoutExercise.new(workout_exercise_params)
    @workout = Workout.find(params[:workout_id])
    @workout_exercise.workout = @workout
    @exercise = Exercise.find(params[:workout_exercise][:exercise])
    @workout_exercise.exercise = @exercise
    if @workout_exercise.save
      redirect_to workout_path(@workout)
    else
      render "workouts/show", status: :unprocessable_entity
    end
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @workout_exercise = WorkoutExercise.find(params[:id])
    @workout_exercise.destroy
    redirect_to workout_path(@workout), status: :see_other
  end

  def favorite_workout_exercise

  end

  private

  def workout_exercise_params
    params.require(:workout_exercise).permit(:weight, :number_of_series, :repetitions, :workout_id, :exercise_id)
  end
end
