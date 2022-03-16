class Memory < ApplicationRecord
  belongs_to :user, through: :tasks

  validates :title, presence: true
end
