class AppsController < ApplicationController
  def index
    @apps = App.paginate(:page => params[:page], :per_page => 8)
  end
  def show
    @app = App.find(params[:id])
  end

end
