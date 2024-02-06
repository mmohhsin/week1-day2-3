class Post < ApplicationRecord
  validates_each :name, :body do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end
end
