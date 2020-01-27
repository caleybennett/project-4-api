class Book < ApplicationRecord
  belongs_to :bookclub
  belongs_to :user
end
