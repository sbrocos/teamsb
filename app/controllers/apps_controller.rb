class AppsController < ApplicationController
  respond_to :json
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

  def instalar
    @app = App.find(params[:id])

    @a = Appuser.find_by_app_id(params[:id])

    if @a != nil
      resultado = { id: 'false'}
    else
      @rel = @app.appusers.create!(user_id: 1)
      resultado = { id: 'true'}
    end

    respond_to do |format|
      format.json  { render :json => resultado }
    end
  end

end
