class ChangeIntegerLimitInReports < ActiveRecord::Migration[6.1]
  def change
    change_column :reports, :case_num, :bigint, limit: 10, null: false
  end
end
