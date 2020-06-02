class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :student_id
      t.integer :diary_id

      t.timestamps
    end
  end
end
