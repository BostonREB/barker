class User < ActiveRecord::Base
  include Following

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :barks

  def following?(user)
    followed_user_ids.include?(user.id)
  end

end
