class Student < ApplicationRecord
	belongs_to :department
	has_many :book_issues
	has_many :books, through: :book_issues
	validates_associated :book_issues
end
