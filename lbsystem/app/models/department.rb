class Department < ApplicationRecord
	has_many :students
	validates_associated :students
	validates :name, length: {minimum: 2}
	validates :name, uniqueness: true
end

