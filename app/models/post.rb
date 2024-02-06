class Post < ApplicationRecord
  after_initialize do |post|
    puts "You have initialized an object!"
  end

  after_find do |post|
    puts "You have found an object!"
  end
end
