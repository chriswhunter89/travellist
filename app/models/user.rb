class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  has_many :destinations, dependent: :destroy
  has_many :tasks, through: :destinations
  has_many :memories, through: :destinations

  VALID_EMAIL_REGEX = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX, multiline: true }
  validates :password, presence: true, length: { in: 6..20 }
  validates :password, confirmation: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
