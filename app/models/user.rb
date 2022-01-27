class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :relationships
  has_many :microposts, through: :relationships, dependent: :destroy
  has_many :comments, through: :relationships, dependent: :destroy

  validates :user_name, presence: true
end
