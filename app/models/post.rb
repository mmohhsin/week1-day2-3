class Post < ApplicationRecord
  before_save :before_save_callback
  private

  def before_save_callback
    puts "Before save callback executed"
    throw :abort if body.blank?
  end
end
