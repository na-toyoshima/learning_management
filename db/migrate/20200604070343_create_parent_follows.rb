class CreateParentFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_follows do |t|
      t.integer :student_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
