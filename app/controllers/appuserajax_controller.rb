class AppuserajaxController < ApplicationController
  respond_to :json
  def index
    respond_with  Appuser.all()
  end
  def show
    respond_with  Appuser.find(params[:id])
  end

  def create
    @id = params[:app_id]

    rel = Appuser.find_by_app_id(@id)

    if rel
      respond_with false
    else
      @app = App.find(@id)
      @app.appusers.create(user_id: current_user.id)
      respond_with @app
    end
  end

  def destroy
    @id = params[:app_id]
    rel = Appuser.find_by_app_id(@id)
    if !rel
      respond_with false
    else
      @app = App.find(@id)
      @app.appusers.destroy_all
      respond_with @app
    end
  end
end
