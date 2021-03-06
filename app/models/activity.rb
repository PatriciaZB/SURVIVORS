class Activity < ApplicationRecord
  # Constants
  CATEGORIES = ["Yoga", "Art", "Dance", "Painting", "Self defense", "Group therapy",
                "Talk", "Cooking", "Workshop", "Theater", "Movement", "Sports",
                "Protest", "Music", "Meditation", "Other"]
  PRESENCE = ["In-presence", "Online"]

  # ActiveRecord Relations
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  # Active Storage
  has_one_attached :image

  # Gem-specific stuff
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :presence, presence: true, inclusion: { in: PRESENCE }
end
