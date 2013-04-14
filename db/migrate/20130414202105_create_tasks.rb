class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :details
      t.integer :label
      t.integer :priority
      t.datetime :startdate
      t.datetime :enddate
      t.references :project

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
