class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :student_id
      t.integer :diary_id
      t.text :body

      t.timestamps
    end
  end
end
