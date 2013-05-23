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

    if params[:action] == 'delete'
      Appuser.find_by_app_id(@id).destroy
      respond_with @app = App.find(@id)
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
