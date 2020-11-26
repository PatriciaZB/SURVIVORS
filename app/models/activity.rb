class Activity < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  belongs_to :user

  CATEGORIES = ["Yoga", "Art", "Dance", "Painting", "Self defense", "Group therapy", "Talk", "Cooking", "Workshop", "Theater", "Movement", "Sports", "Other"]
  PRESENCE = ["In-presence", "Online"]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :presence, presence: true, inclusion: { in: PRESENCE }
end
