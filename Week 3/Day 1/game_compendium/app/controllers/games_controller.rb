class GamesController < ApplicationController

  before_action :find_game, only: [:show, :edit, :update, :destroy]

  def new
    @game = Game.new
  end

  def create
    @game = Game.create game_params
    if @game.save == true
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @game.update_attributes game_params
      redirect_to root_path
    else 
      render :edit
    end
    
  end

  def show
    @game = Game.find params[:id]
  end

  def destroy
    
    @game.delete
    redirect_to root_path
  end

private

  def find_game
    @game = Game.find params[:id]
  end

  def game_params
    params.require(:game).permit(:title, :genre, :description)
  end

end
