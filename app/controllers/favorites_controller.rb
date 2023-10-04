class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def create
    @workout = Workout.find(params[:workout_id])
    Favorite.create(user: current_user, workout: @workout)
    redirect_to workout_path(@workout)
    flash[:notice] = "Ajouté aux favoris !"
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, status: :see_other
  end
end
