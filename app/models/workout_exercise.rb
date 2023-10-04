class WorkoutExercise < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise
  validates :weight, presence: true
  validates :number_of_series, presence: true
  validates :repetitions, presence: true
end
