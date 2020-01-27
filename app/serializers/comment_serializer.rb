class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :book, :user
  # has_one :book
  # has_one :user
end
