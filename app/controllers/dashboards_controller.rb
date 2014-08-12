class DashboardsController < ApplicationController

  def show
    @bark = Bark.new
    @barks = current_user.barks
  end
end
