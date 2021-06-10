class AddFieldnamesToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :name, :string
    add_column :orders, :telephone, :string
    add_column :orders, :address, :string
  end
end
