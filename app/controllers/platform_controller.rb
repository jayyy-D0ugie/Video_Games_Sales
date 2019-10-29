class PlatformController < ApplicationController
   def index
    @platform = Platform.order(:developer_name).page params[:page]
  end

  def show
    @platform = Platform.find(params[:id])
  end
end
