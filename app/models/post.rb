class Post < ApplicationRecord
  validates_presence_of :name
  before_save :before_save_callback


  private
  def before_save_callback
    self.name = self.name.upcase if name.present?
  end
end
