class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :telephone_number
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
