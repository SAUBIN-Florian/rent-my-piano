class Booking < ApplicationRecord
  belongs_to :piano
  belongs_to :user

  validates :content, presence: true
end
