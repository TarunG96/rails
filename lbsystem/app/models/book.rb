class Book < ApplicationRecord
	belongs_to :category
	has_many :book_issues
	has_many :students, through: :book_issues
	validates_associated :book_issues
	validates :name, length: {minimum: 2}
	mount_uploader :image ,FileUploader
end
