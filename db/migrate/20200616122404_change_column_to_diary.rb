class ChangeColumnToDiary < ActiveRecord::Migration[5.2]
  def up
    change_column_default :diaries, :study_time, nil
    change_column_default :diaries, :solve_number, nil
    change_column_default :diaries, :incorrect_rate, nil
  end

  def down
    change_column_default :diaries, :study_time, 0.0
    change_column_default :diaries, :solve_number, 0
    change_column_default :diaries, :incorrect_rate, 0.0
  end
end
