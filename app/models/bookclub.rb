class Bookclub < ApplicationRecord
  has_many :bookclub_members, dependent: :destroy
  has_many :users, through: :bookclub_members
  has_many :books
end
