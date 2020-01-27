class BookclubMemberSerializer < ActiveModel::Serializer
  attributes :id
  has_one :bookclub
  has_one :user

end
