class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[\w-]{6,128}+\z/i

  with_options presence: true do
    validates :nickname
    validates :email
    validates :password, length: {minimum: 6 }, format: { with: VALID_PASSWORD_REGEX}
  end
  
end
