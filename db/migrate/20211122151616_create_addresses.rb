class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_line_1
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipCode
      t.bigint :phone
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
