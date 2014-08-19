class Dashboard

  def initialize(user)
    @user = user
  end

  def new_text_bark
    TextBark.new
  end

  def new_photo_bark
    PhotoBark.new
  end

  def timeline
    Timeline.new(@user)
  end

end
