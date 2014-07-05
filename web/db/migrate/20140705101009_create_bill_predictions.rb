class CreateBillPredictions < ActiveRecord::Migration
  def change
    create_table :bill_predictions do |t|
      t.integer :bill_id
      t.integer :prediction

      t.timestamps
    end
  end
end
