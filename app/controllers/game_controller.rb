class GameController < ApplicationController
  def index
    @games = Game.order(:game_rank).page params[:page]
  end

  def show
    @games = Game.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @games = Game.where('name LIKE ?' , '%#{@query}%')
  end
end