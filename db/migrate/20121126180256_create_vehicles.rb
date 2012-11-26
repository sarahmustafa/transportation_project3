class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :license_plate
      t.string :description

      t.timestamps
    end
  end
end
