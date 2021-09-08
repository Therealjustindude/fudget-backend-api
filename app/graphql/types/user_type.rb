module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :encrypted_password, String, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :reset_password_token, String, null: true
    field :reset_password_sent_at, GraphQL::Types::ISO8601DateTime, null: true
    field :remember_created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :sign_in_count, Integer, null: false
    field :last_sign_in_at, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :expense_count , Integer, null: false
    field :expenses, [Types::ExpenseType], null: true

    def expense_count
      object.expenses.count
    end
  end
end
