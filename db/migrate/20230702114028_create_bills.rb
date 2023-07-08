class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :amount
      t.string :type

      t.timestamps
    end
  end
end
