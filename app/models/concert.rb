class Concert < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances
end
