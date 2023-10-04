class Exercise < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises, dependent: :destroy
  validates :name, presence: true
end
