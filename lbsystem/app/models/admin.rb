class Admin < ApplicationRecord
	validates :name, uniqueness: true
	validates :name, length: {minimum: 2}
end
