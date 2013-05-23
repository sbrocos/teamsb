class AppajaxController < ApplicationController
  respond_to :json
  def index
    respond_with @apps = App.paginate(:page => params[:page], :per_page => 8)
  end
  def show
    @app = App.find(params[:app_id].to_i)
  end

  def create
    id = params[:app_id]
    @app = App.find(id)

    @a = Appuser.find_by_app_id(id)

    if @a != nil
      rel = false
    else
      @app.appusers.create!(user_id: 1)
      rel = true
    end

    respond_to rel
  end
end
