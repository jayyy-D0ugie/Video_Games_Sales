class GenreController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def index
    @genre = Genre.order(:developer_name).page params[:page]
  end

  def search_results
    @query = params[:query]
    @genre = Genre.where('name LIKE ?' , '%#{@query}%')
  end
end
