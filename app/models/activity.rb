class Activity < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
