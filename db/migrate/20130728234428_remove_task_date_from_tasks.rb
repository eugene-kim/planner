class RemoveTaskDateFromTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_date
  end
end
