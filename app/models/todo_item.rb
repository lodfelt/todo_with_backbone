class TodoItem < ActiveRecord::Base
  attr_accessible :done, :name

  validates_presence_of :name
end
