class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_one_attached :image
    
    def self.search(search)
        if search != ""
          Post.where('text LIKE(?)', "%#{search}%")
        else
          Post.all
        end
    end

    with_options presence: true do
      validates :text, unless: :was_attached?
      validates :title
      validates :image
    end

      validates :text, length: { minimum: 1,maximum: 100}
      validates :title, length: { minimum: 1,maximum:20}

  def was_attached?
    self.image.attached?
  end

end
