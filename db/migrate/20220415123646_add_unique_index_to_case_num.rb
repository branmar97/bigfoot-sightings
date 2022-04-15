class AddUniqueIndexToCaseNum < ActiveRecord::Migration[6.1]
  def change
    add_index :reports, :case_num, unique: true
  end
end
