class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :total
      t.integer :user_id
      t.timestamps
    end
  end
end
