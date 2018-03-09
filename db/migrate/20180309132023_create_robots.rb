class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.boolean :has_sentience
      t.boolean :has_wheels
      t.boolean :has_tracks
      t.integer :number_of_rotors
      t.string :colour
      t.string :statuses

      t.timestamps
    end
  end
end
