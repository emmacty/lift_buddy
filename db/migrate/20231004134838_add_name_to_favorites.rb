class AddNameToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :name, :string
  end
end
