class ChangeDataImageIdToStudent < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :image_id, :string
  end
end
