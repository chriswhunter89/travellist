class Task < ApplicationRecord
  belongs_to :destination
  has_many :memories

  validates :title, presence: true
end
