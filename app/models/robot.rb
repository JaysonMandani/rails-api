class Robot < ApplicationRecord
  scope :has_rotors, -> { where("number_of_rotors <= ? AND number_of_rotors >= ?", 3, 8) }
  scope :has_colour, -> { where(colour: 'blue') }
  scope :has_track_wheels, -> { where.not(has_wheels: true, has_tracks: true) }
  scope :has_sentience_status, -> { where(has_sentience: true, statuses: 'loose screws') }
  scope :has_onfire, -> { where(statuses: 'on fire') }
end
