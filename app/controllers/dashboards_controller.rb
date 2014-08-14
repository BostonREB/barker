class DashboardsController < ApplicationController

  def show
    @text_bark = TextBark.new
    @photo_bark = PhotoBark.new
    @barks = Bark.all
  end
end
