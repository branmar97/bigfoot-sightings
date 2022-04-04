class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :case_num
      t.datetime :occurence
      t.string :city
      t.string :state
      t.text :vicinity
      t.text :conditions
      t.integer :witnesses
      t.text :evidence
      t.text :account
      t.text :prints
      t.text :sounds
      t.text :additional_info

      t.timestamps
    end
  end
end
