class Post < ApplicationRecord
  validates :name, :body, presence: true
  validates :name, uniqueness: true
end
