module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    
  field :users, [Types::UserType], null: true, description: "/users"
  def users
    User.all
  end

  field :user, Types::UserType, null: true, description: "/user/id" do
    argument :id, ID, required: true
  end

  def user(id:)
    User.find_by(id: id)
  end
end
end
