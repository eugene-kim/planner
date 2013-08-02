class RemoveTaskDateFromTasks < ActiveRecord::Migration
  def up
  	remove_column :tasks, :task_date  	
  end

  def down
  	add_column :tasks, :task_date, :date
  end
end
