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

    if params[:accion] == 'delete'
      Appuser.find_by_app_id(params[:app_id]).destroy
      respond_with App.find(1)
    else
      rel = Appuser.find_by_app_id(@id)
      if rel
        respond_with false
      else
        @app = App.find(@id)
        @app.appusers.create(user_id: current_user.id)
      end
      respond_with @app
    end

  end
end
