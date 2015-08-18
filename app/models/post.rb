class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"

  validates :author_id, presence: true
  validates :content, presence: true
  validates :title, presence: true

  delegate :email, to: :author, prefix: true, allow_nil: true
end
