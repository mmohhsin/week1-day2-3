class Post < ApplicationRecord
  before_validation :capitalize_name

  validates :name, presence: true
  validates :body, presence: true

  private

  def capitalize_name
    self.name = name.capitalize if name.present?
  end
end
