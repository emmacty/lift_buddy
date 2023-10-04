class RemoveNameFromFavorites < ActiveRecord::Migration[7.0]
  def change
    remove_column :favorites, :name, :string
  end
end
