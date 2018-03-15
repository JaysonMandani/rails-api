class ShipmentsController < ApplicationController
  def create
    @robots = Robot.where(ship_ready: true, shipped: false)
    @shipment = Shipment.create(robot_ids: @robots.ids)

    if @shipment.present?
      @shipment.update_shipped(@robots.ids)
      @recycle     = Robot.recycle_robots.map(&:id)
      @not_passed  = Robot.recycle_robots
      @passed      = Robot.passed
      @ship_ready  = Robot.ship_ready

      render json: { message: "Successfully created", status: :created, recycleRobots: @recycle, passed: @passed, not_passed: @not_passed, ship_ready: @ship_ready }
    else
      render json: { message: @shipment.errors.full_messages, status: :failed }
    end
  end
end
