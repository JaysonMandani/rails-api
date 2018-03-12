class Robot < ApplicationRecord
  scope :extiguish_robots, -> { where(has_sentience: true, status: 'on fire' ) }
  scope :has_rotors, -> { where("number_of_rotors <= ? AND number_of_rotors >= ?", 3, 8) }
  scope :has_colour, -> { where("number_of_rotors > ? AND colour = ?", 0, 'blue') }
  scope :has_track_wheels, -> { where.not(has_wheels: true, has_tracks: true) }
  scope :has_sentience_status, -> { where(has_sentience: true, status: 'loose screws') }
  scope :is_onfire, -> { where(status: 'on fire') }
  scope :is_rusty, -> { where("status = ? OR status = ?", 'loose screws', 'paint scratched') }

  def recycle_process
  end
end
