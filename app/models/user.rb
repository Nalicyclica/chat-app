class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  # validates :email, presence: true
  # validates :password, presence: true

  has_many :messages
  has_many :room_users
  has_many :rooms, through: :room_users

end
