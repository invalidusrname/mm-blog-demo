class Comment < ApplicationRecord
  belongs_to :blog, class_name: "Blog", foreign_key: "blog_post"
end
