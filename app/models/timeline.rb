class Timeline
  include ActiveModel::Conversion

  def initialize(user)
    @user = user
  end

  def barks
    Bark.where(user_id: bark_user_ids)
  end

  private

  def bark_user_ids
    [@user.id] + @user.followed_user_ids
  end

end
