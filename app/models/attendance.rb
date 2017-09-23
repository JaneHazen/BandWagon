class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: "User", foreign_key: "attendee_id"
  belongs_to :concert, foreign_key: "concert_id"
end
