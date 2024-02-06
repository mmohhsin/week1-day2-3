class Post < ApplicationRecord
  validates :name, inclusion: { in: %w(mohsin ahmed ali), message: "%{value} is not a valid valid" }
end
