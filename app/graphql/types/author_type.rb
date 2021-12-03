module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false do
      description "This is the ID"
    end
    field :name, String, null: true
    field :post, [PostType], null: true
  end
end
