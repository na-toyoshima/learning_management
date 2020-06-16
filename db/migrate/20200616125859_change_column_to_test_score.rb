class ChangeColumnToTestScore < ActiveRecord::Migration[5.2]
  def change
    change_column_default :test_scores, :japanese, nil
    change_column_default :test_scores, :math, nil
    change_column_default :test_scores, :science, nil
    change_column_default :test_scores, :social, nil
    change_column_default :test_scores, :english, nil
    change_column_default :test_scores, :p_e, nil
    change_column_default :test_scores, :art, nil
    change_column_default :test_scores, :music, nil
    change_column_default :test_scores, :technical_course, nil
    change_column_default :test_scores, :home_economics, nil
  end
end
