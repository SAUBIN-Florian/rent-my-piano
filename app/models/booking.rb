class Booking < ApplicationRecord
  belongs_to :piano
  belongs_to :user

  validates :status, presence: true, uniqueness: true
end
