class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :book_id
      t.decimal :rate
      t.decimal :amount
      t.integer :quantity
      t.integer :order_id
      t.timestamps
    end
  end
end
