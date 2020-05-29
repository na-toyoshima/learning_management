class AddDateToTestRanges < ActiveRecord::Migration[5.2]
  def change
    add_column :test_ranges, :start_date, :date
    add_column :test_ranges, :end_date, :date
  end
end
