class Post < ApplicationRecord
  has_many :tag_posts , dependent: :destroy
  has_many :tags, :through => :tag_posts
  belongs_to :user
validates :user_id, presence: true

end
