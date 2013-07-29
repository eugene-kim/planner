class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.belongs_to :day
      t.date :task_date
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
