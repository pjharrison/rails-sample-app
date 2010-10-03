class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs, :force => true do |t|
      t.string :company
      t.string :title
      t.integer :salary
      t.string :location
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
