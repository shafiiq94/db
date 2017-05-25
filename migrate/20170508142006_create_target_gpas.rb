class CreateTargetGpas < ActiveRecord::Migration[5.0]
  def change
    create_table :target_gpas do |t|
      t.references :students, foreign_key: true
      t.float :target_gpa

      t.timestamps
    end
  end
end
