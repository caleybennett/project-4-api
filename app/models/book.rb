class Book < ApplicationRecord
  # belongs_to :bookclub
  belongs_to :user
  has_many :comments, dependent: :destroy
end
