class Booking < ApplicationRecord
  belongs_to :piano
  belongs_to :user
end
