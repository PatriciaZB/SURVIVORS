class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :user_id, uniqueness: { scope: :activity, message: "You can't book an activity that you booked already" }
end
