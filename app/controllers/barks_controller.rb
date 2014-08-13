class BarksController < ApplicationController

  def create
    @bark = current_user.barks.build(barks_parameters)
    if @bark.save
      redirect_to dashboard_path
    else
      flash.alert = "Bark cannot be blank!"
      redirect_to dashboard_path
    end
  end

  def show
    @bark = Bark.find(params[:id])
  end

  def destroy
    @bark = Bark.find(params[:id])
    @bark.destroy
    redirect_to dashboard_path
  end


  private

  def barks_parameters
    params.require(:bark).permit(:body)
  end

end
