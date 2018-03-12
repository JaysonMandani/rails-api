class RobotsController < ApplicationController
  def index
    @robots = Robot.where(shipped: false)

    render json: @robots
  end

  def extinguish
    @robot = Robot.find params[:id]
    @robot.update_attribute(:status, nil) if @robot.status == 'on fire'

    render json: @robot
  end

  def recycle
    @recycle     = Robot.recycle_robots
    @not_passed  = Robot.where.not(status: [nil, ""], shipped: true)
    @passed      = Robot.where(status: [nil, ""], shipped: false)

    render json: {recycleRobots: @recycle, passed: @passed, not_passed: @not_passed}
  end
end
