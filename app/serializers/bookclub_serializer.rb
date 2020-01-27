class BookclubSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :books
end
