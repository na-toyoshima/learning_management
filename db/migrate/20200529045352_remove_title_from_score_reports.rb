class RemoveTitleFromScoreReports < ActiveRecord::Migration[5.2]
  def change
    remove_column :score_reports, :title, :string
  end
end
