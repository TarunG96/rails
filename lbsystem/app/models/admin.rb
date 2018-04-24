class Admin < ApplicationRecord
  validates :name , length: {minimum: 4} , presence: true
  validates :username, uniqueness: true , length: { minimum: 3}
  validates :password, presence: true, length: { in: 8..16}
  validates :email, presence: true, uniqueness: true
  validates_format_of :password, :with => /([a-z]{3})/
end
