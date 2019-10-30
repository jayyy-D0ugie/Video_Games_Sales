class PublisherController < ApplicationController
  def show
    @developer = Developer.find(params[:id])
  end

  def index
    @publisher = Publisher.order(:developer_name).page params[:page]
  end

  def search_results
    @query = params[:query]
    @publisher = Publisher.where('name LIKE ?' , '%#{@query}%')
  end
end
