class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :students, foreign_key: true
      t.string :task_details
      t.string :task_title
      t.date :date

      t.timestamps
    end
  end
end
