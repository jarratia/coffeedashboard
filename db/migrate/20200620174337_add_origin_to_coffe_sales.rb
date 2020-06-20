class AddOriginToCoffeSales < ActiveRecord::Migration[5.2]
  def change
    add_column :coffe_sales, :origin, :string
  end
end
