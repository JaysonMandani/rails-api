class ChangeColumnFields < ActiveRecord::Migration[5.1]
  def change
    rename_column :robots, :statuses, :status
    rename_column :shipments, :shipping, :robot_ids
  end
end
