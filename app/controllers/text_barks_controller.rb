class TextBarksController < ApplicationController

  def create
    content = build_content
    bark = current_user.barks.build(content: content)
    if bark.save
      redirect_to dashboard_path
    else
      flash.alert = "Bark cannot be blank!"
      redirect_to dashboard_path
    end
  end

  private

  def build_content
    TextBark.new(text_bark_parameters)
  end

  def text_bark_parameters
    params.require(:text_bark).permit(:body)
  end

end
