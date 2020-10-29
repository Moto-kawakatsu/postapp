class Post < ApplicationRecord
    validates :text, presence: true
    # def was_attached?
    #   self.image.attached?
    # end
    
    belongs_to :user
    has_many :comments
    # has_one_attached :image

    def self.search(search)
        if search != ""
          Post.where('text LIKE(?)', "%#{search}%")
        else
          Post.all
        end
    end
end
