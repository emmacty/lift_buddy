class AddUserToExercises < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :user, index: true
  end
end
