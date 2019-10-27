class DeveloperController < ApplicationController
  def show
    @developer = Developer.find(params[:developer_name])
  end

  def index
  end
end
