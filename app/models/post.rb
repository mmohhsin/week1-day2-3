class Post < ApplicationRecord
  validates_presence_of :name
  around_save :around_save_callback


  private
  def around_save_callback
    self.body = self.body.downcase if body.present?
    yield
    self.body = self.body.capitalize if body.present?
  end
end
