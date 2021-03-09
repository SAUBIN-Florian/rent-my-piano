class Piano < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :price, :brand, presence: true
end
