class DashboardsController < ApplicationController

  def show
    @text_bark = TextBark.new
    @barks = current_user.barks
  end
end
