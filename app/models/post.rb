class Post < ApplicationRecord
    validates :text, presence: true
    belongs_to :user
    has_many :comments
    has_many :likes, dependent: :destroy

    def self.search(search)
        if search != ""
          Post.where('text LIKE(?)', "%#{search}%")
        else
          Post.all
        end
    end
end
