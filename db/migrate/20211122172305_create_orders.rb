class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.bigint :customer_id
      t.bigint :amount
      t.string :transId
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
