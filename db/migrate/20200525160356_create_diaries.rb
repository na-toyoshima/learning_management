class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.float :study_time, null: false, default: 0
      t.integer :student_id, null: false
      t.integer :solve_number, null: false, default: 0
      t.float :incorrect_rate, null: false, default: 0
      t.text :can_body
      t.text :cannot_body
      t.text :next_body
      t.float :rate, null: false, default: 0
      t.date :date

      t.timestamps
    end
  end
end
