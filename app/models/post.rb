class Post < ApplicationRecord
  validates_presence_of :name
  before_create :before_create_callback

  private
  def before_create_callback
    self.name ||= "Untitled" if name.blank?
  end
end
