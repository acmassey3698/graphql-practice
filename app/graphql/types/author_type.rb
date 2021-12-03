module Types
  class AuthorType < Types::BaseObject
    field :name, String, null: true
    field :post, Types::HasManyType, null: true
  end
end
