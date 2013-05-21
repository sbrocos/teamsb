class AppsController < ApplicationController
  def index
    @apps = App.paginate(:page => params[:page], :per_page => 8)
  end
  def show
    @app = App.find(params[:id])

    respond_to do |format|
      format.html
      format.rss
    end

  end

end
