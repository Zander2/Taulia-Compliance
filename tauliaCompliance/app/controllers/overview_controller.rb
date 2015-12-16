class OverviewController < ApplicationController
  def index
    @user = current_user
    @search = ""
    render "home"
  end

end
