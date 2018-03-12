class RobotSerializer < ActiveModel::Serializer
  attributes :id, :name, :has_sentience, :has_wheels, :number_of_rotors, :colour, :status, :shipped
end
