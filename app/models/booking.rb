class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates_uniqueness_of :user_id, :scope => :activity_id, :message=>"You can't book an activity that you booked already", on: 'create'
end
