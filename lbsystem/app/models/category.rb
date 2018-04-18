class Category < ApplicationRecord
	has_many :books
	validates_associated :books
	validates :name, length: {minimum: 2}
	validates :name, uniqueness: true
end
