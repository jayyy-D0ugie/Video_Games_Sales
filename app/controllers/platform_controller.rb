class PlatformController < ApplicationController
   def index
    @platform = Platform.order(:developer_name).page params[:page]
  end

  def show
    @platform = Platform.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @platform = Platform.where('name LIKE ?' , '%#{@query}%')
  end
end
