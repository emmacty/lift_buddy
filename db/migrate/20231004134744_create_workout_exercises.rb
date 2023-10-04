class CreateWorkoutExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_exercises do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.integer :weight
      t.integer :number_of_series
      t.integer :repetitions

      t.timestamps
    end
  end
end
