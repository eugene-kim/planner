class Day < ActiveRecord::Base
  attr_accessible :date, :tasks_attributes
  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true
end
