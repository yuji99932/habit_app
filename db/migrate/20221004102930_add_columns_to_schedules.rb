class AddColumnsToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :content1, :string
    add_column :schedules, :content2, :string
    add_column :schedules, :content3, :string
    add_column :schedules, :content4, :string
  end
end
