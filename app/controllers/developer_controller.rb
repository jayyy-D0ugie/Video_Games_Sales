class DeveloperController < ApplicationController
  def index
    @developer = Developer.order(:developer_name).page params[:page]
  end

  def show
    @developer = Developer.find(params[:id])
  end
end 