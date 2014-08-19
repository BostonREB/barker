class BarksController < ApplicationController

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
