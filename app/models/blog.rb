class Blog < ApplicationRecord
  has_many :comments, foreign_key: :blog_post
end
