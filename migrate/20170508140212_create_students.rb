class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :no_matric
      t.string :stud_name
      t.string :course_code
      t.string :tel_no
      t.float :gpa

      t.timestamps
    end
  end
end
