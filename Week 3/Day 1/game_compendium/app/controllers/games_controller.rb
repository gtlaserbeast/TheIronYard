class GamesController < ApplicationController

  before_action :find_food, only: [:show, :edit, :update, :destroy]

  def new
    @game = Game.new
  end

  def create
    Game.create game_params
    redirect_to root_path
  end

  def edit
    
  end

  def update
    
    @game.update_attributes game_params
    redirect_to root_path
  end

  def show
    @game = Game.find params[:id]
  end

  def destroy
    
    @game.delete
    redirect_to root_path
  end

private

  def find_food
    @food = Food.find params[:id]
  end

  def game_params
    params.require(:game).permit(:title, :genre, :description)
  end

end
