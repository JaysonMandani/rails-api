class Shipment < ApplicationRecord
  def update_shipped robot_ids
    @robots = Robot.find(robot_ids)
    @robots.map{ |x| x.update(shipped: true) }
  end
end
