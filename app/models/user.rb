class User < ApplicationRecord
  has_many :attendances, foreign_key: "attendee"
  has_many :concerts, through: :attendances

  validates :first_name, :last_name, :email, {presence: true}
  validates :email, {uniqueness: true}
  validate :has_password

  has_secure_password
end
