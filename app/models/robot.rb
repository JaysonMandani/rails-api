class Robot < ApplicationRecord
  scope :has_rotors,           -> { where("number_of_rotors <= ? AND number_of_rotors >= ?", 3, 8) }
  scope :has_colour,           -> { where("number_of_rotors > ? AND colour = ?", 0, 'blue') }
  scope :has_track_wheels,     -> { where.not(has_wheels: true, has_tracks: true) }
  scope :has_sentience_status, -> { where(has_sentience: true, status: 'loose screws') }
  scope :is_onfire,            -> { where(status: 'on fire') }
  scope :is_rusty,             -> { where("status = ? OR status = ?", 'loose screws', 'paint scratched') }
  scope :passed,               -> { where(status: [nil, ""], shipped: false) }

  def self.recycle_robots
    robot_ids = []
    robot_ids << self.has_rotors
    robot_ids << self.has_colour
    robot_ids << self.has_track_wheels
    robot_ids << self.has_sentience_status
    robot_ids << self.is_onfire
    robot_ids << self.is_rusty

    robot_ids.flatten.uniq!
  end
end
