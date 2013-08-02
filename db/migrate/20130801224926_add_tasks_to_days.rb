class AddTasksToDays < ActiveRecord::Migration
  def change
  	add_column :days, :tasks, :text
  end
end
