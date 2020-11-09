class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes, dependent: :destroy
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
      # validates :image
  
      with_options length: { maximum: 50} do
        validates :text
        validates :title
    end
  end

  def was_attached?
    self.image.attached?
  end

end
