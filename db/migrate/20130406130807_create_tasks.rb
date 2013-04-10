class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :taskName
      t.integer :taskStatus
      t.string :memo

      t.timestamps
    end
  end
end
