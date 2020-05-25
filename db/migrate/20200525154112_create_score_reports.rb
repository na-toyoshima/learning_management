class CreateScoreReports < ActiveRecord::Migration[5.2]
  def change
    create_table :score_reports do |t|
      t.integer :grade, null: false
      t.integer :term, null: false
      t.string :title, null: false
      t.integer :japanese, null: false, default: 0
      t.integer :math, null: false, default: 0
      t.integer :science, null: false, default: 0
      t.integer :social, null: false, default: 0
      t.integer :english, null: false, default: 0
      t.integer :p_e, null: false, default: 0
      t.integer :art, null: false, default: 0
      t.integer :music, null: false, default: 0
      t.integer :technical_course, null: false, default: 0
      t.integer :home_economics, null: false, default: 0
      t.integer :student_id, null: false

      t.timestamps
    end
  end
end
