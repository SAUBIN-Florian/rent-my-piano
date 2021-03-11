class Piano < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_price_and_brand,
    against: [ :name, :price, :brand ],
    using: {
      tsearch: { prefix: true }
    }

  validates :name, :price, :brand, presence: true
end
