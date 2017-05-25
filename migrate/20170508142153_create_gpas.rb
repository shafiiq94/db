class CreateGpas < ActiveRecord::Migration[5.0]
  def change
    create_table :gpas do |t|
      t.references :target_gpa, foreign_key: true
      t.string :subject
      t.integer :credit_hour

      t.timestamps
    end
  end
end
