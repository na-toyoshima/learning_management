class CreateTestRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :test_ranges do |t|
      t.integer :grade, null: false
      t.integer :term, null: false
      t.string :title, null: false
      t.text :japanese
      t.text :math
      t.text :science
      t.text :social
      t.text :english
      t.text :p_e
      t.text :art
      t.text :music
      t.text :technical_course
      t.text :home_economics
      t.integer :student_id

      t.timestamps
    end
  end
end
