class AddShipReadyToRobot < ActiveRecord::Migration[5.1]
  def change
    add_column :robots, :ship_ready, :boolean, default: false
  end
end
