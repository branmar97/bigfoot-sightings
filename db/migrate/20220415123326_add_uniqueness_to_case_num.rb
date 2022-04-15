class AddUniquenessToCaseNum < ActiveRecord::Migration[6.1]
  def change
    change_column :reports, :case_num, :integer, null: false
  end
end
