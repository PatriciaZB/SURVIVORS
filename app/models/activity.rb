class Activity < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  belongs_to :user
  geocoded_by :address

  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :category, presence: true
  validates :presence, presence: true
  
  after_validation :geocode, if: :will_save_change_to_address?
end
