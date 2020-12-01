class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  has_many :reviews
  has_many :questions
  has_many :answers
  has_many :bookings

  has_one_attached :avatar

  validates :nickname, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

end
