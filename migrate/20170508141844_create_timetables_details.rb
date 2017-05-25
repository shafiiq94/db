class CreateTimetablesDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :timetables_details do |t|
      t.references :timetables, foreign_key: true
      t.string :day
      t.time :start_time
      t.time :end_time
      t.string :tdetails_description

      t.timestamps
    end
  end
end
