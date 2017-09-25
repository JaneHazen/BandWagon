class User < ApplicationRecord
  has_many :attendances, foreign_key: "attendee"
  has_many :concerts, through: :attendances

  validates :first_name, :last_name, :email, {presence: true}
  validates :email, {uniqueness: true}

  has_secure_password
end
