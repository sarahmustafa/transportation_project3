class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :vehicle_id
      t.time :order_time
      t.date :order_date
      t.time :pickup_time
      t.date :pickup_date
      t.string :pickup_address
      t.string :destination
      t.integer :number_of_passengers
      t.boolean :driver

      t.timestamps
    end
  end
end
