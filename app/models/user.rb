class User < ApplicationRecord

devise :database_authenticatable, :registerable,
	   :recoverable, :rememberable, :validatable,
	   :confirmable

has_many :recipes, foreign_key: 'UserID'
has_many :foods,