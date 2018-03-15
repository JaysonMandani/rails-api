class RobotsController < ApplicationController
  def index
    @robots = Robot.where(shipped: false)

    render json: @robots
  end

  def extinguish
    @robot = Robot.find params[:id]
    @robot.update_attribute(:status, nil) if @robot.status == 'on fire'
    recycle_process
  end

  def recycle
    recycle_process
  end

  def move_to_ship
    @robot = Robot.find params[:id]
    if @robot.present?
      @robot.update_attribute(:ship_ready, true)

      recycle_process
    else
      render json: { message: @robot.errors.full_messages, status: :failed }
    end
  end

  def remove_to_ship
    @robot = Robot.find params[:id]
    if @robot.present?
      @robot.update_attribute(:ship_ready, false)
      recycle_process

    else
      render json: { message: @robot.errors.full_messages, status: :failed }
    end
  end

  private

  def recycle_process
    @recycle     = Robot.recycle_robots.map(&:id)
    @not_passed  = Robot.recycle_robots
    @passed      = Robot.passed
    @ship_ready  = Robot.ship_ready

    render json: { recycleRobots: @recycle, passed: @passed, not_passed: @not_passed, ship_ready: @ship_ready }
  end
end
