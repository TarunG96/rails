class Book < ApplicationRecord
	belongs_to :category
	has_many :book_issues
	has_many :students, through: :book_issues
end
