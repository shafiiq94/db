class CreateTimetables < ActiveRecord::Migration[5.0]
  def change
    create_table :timetables do |t|
      t.references :students, foreign_key: true
      t.string :timetable_details
      t.string :timetable_title

      t.timestamps
    end
  end
end
