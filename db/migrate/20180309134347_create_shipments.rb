class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.jsonb :shipping, null: false, default: '{}'

      t.timestamps
    end
  end
end
