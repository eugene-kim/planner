class Task < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :day
end
