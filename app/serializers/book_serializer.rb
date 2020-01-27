class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author
  has_one :bookclub
  has_one :user
end
