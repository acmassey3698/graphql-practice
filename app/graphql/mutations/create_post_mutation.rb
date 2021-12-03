module Mutations
  class CreatePostMutation < BaseMutation
    field :post, Types::PostType, null: false
    argument :title, String, required: true do
      description "the title field is required"
    end

    argument :body, String, required: true do
      description "this is the main content"
    end

    argument :author, Integer, required: true do
      description "ID of the author"
    end

    def resolve(title:, body:, author:)
      @post = Post.new(title: title, body: body, author: Author.find(author))

      if @post.save
        {
          post: @post,
          errors: []
        }
      else
        {
        post: nil,
        errors: @post.errors.full_messages
        }
      end
    end
  end
end
