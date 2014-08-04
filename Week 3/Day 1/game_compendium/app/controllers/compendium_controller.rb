class CompendiumController < ApplicationController
  def index
    @games = Game.all
  end
end
