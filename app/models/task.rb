class Task < ApplicationRecord
  belongs_to :user, through: :destination
  has_many :memories

  validates :title, presence: true
end
