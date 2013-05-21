class StaticController < ApplicationController
  def home
    @apps = App.paginate(:page => params[:page], :per_page => 8)
  end

  def help
  end

  def about
  end
end
