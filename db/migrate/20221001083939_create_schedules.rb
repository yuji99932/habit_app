class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :task1
      t.string :task2
      t.string :task3
      t.string :task4
      t.string :task5
      t.string :task6
      t.timestamps
    end
  end
end
