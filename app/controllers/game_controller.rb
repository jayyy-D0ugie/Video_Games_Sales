# frozen_string_literal: true

class GameController < ApplicationController
  def index
    @games = Game.order(:game_rank).page params[:page]
  end

  def show
    @games = Game.find(params[:id])
  end
end
