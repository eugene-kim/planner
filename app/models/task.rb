class Task < ActiveRecord::Base
  attr_accessible :body, :task_date, :title
  belongs_to :day
end
