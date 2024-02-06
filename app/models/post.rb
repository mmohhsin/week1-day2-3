class Post < ApplicationRecord
  validates :name, exclusion: { in: %w(mobile laptop), message: "%{value} is not allowed." }
end
