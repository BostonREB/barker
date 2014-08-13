class DashboardsController < ApplicationController

  def show
    @text_bark = TextBark.new
    @photo_bark = PhotoBark.new
    @barks = current_user.barks
  end
end
