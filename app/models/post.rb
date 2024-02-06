class Post < ApplicationRecord
  validates_presence_of :name
  around_create :around_create_callback

  private
  def around_create_callback
    self.body = "This post is created: #{self.body}" if body.present?
    yield
    self.body = "Post created successfully!" if body.present?
  end
end
