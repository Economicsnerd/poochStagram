class User < ApplicationRecord
	attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :pooches
         has_many :likes
         has_many :comments
         has_one_attached :avatar

         # Validation
         validates_uniqueness_of :user_name
         validates :avatar, presence: true
     
end
