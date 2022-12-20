class User < ApplicationRecord

devise :database_authenticatable, :registerable,
	   :recoverable, :rememberable, :validatable,
	   :confirmable

validates :name, presence: true, length: { maximum: 50 }
validates :password, presence: true, length: { maximum: 50 }

def display_name
	recipes.limit(5).order(created_at: :desc).map(&:name).join(", ")
end