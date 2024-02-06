class Post < ApplicationRecord
  after_touch do |post|
    puts "You have touched an object"
  end
end
