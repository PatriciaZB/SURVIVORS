class Question < ApplicationRecord
  belongs_to :user
  has_many :answers

  validates :question, presence: true
end
