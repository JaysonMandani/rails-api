class RobotsController < ApplicationController
  def index
    @robots = Robot.where(shipped: false)

    render json: @robots
  end

  def extinguish
  end

  def recycle
  end
end
