class Post < ApplicationRecord
  validates :name, :body, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum:2, maximum:3}
end
