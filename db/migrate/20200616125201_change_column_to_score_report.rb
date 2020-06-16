class ChangeColumnToScoreReport < ActiveRecord::Migration[5.2]
  def change
    change_column_default :score_reports, :japanese, nil
    change_column_default :score_reports, :math, nil
    change_column_default :score_reports, :science, nil
    change_column_default :score_reports, :social, nil
    change_column_default :score_reports, :english, nil
    change_column_default :score_reports, :p_e, nil
    change_column_default :score_reports, :art, nil
    change_column_default :score_reports, :music, nil
    change_column_default :score_reports, :technical_course, nil
    change_column_default :score_reports, :home_economics, nil
  end
end
