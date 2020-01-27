# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :bookclub_members, dependent: :destroy
  has_many :bookclubs, through: :bookclub_members
  has_many :books
  has_many :comments
end
