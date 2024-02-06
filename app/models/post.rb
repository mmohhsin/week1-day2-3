class Post < ApplicationRecord
  validates_presence_of :name
  after_validation :set_status

  private
  def set_status
    self.name = errors.empty?
  end
end
