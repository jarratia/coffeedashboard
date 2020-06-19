class CreateCoffeSales < ActiveRecord::Migration[5.2]
  def change
    create_table :coffe_sales do |t|
      t.string :blend_name
      t.integer :amount
      t.datetime :date_time

      t.timestamps
    end
  end
end
