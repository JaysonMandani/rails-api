class ShipmentsController < ApplicationController
  def create
    @shipment = Shipment.create(shipment_params)
    if @shipment.present?
      @shipment.update_shipped(shipment_params.robot_ids)
      render json: "Successfully created", status: :created
    else
      render json: @shipment.errors.full_messages, status: :failed
    end
  end

  private

  def shipment_params
    params.require(:shipment).permit(:robot_ids)
  end
end
