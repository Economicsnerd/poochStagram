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
         validates_uniqueness_of :user_name

    def self.find_for_database_authentication warden_condition
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(
      ["lower(user_name) = :value OR lower(email) = :value",
      { value: login.strip.downcase}]).first
    end       
end
