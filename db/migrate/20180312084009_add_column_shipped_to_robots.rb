class AddColumnShippedToRobots < ActiveRecord::Migration[5.1]
  def change
    add_column :robots, :shipped, :boolean, default: false
  end
end
