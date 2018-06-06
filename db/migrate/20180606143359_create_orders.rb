class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.boolean :isDelivered

      t.timestamps
    end
  end
end
