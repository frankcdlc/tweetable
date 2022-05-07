class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true
  
  has_one_attached :avatar

  has_many :tweets, dependent: :nullify
end
