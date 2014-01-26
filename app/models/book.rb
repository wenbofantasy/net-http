class Book < ActiveRecord::Base
  attr_accessible :author, :id, :name, :price
end
