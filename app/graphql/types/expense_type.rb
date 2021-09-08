module Types
  class ExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :date_due, GraphQL::Types::ISO8601Date, null: true
    field :date_paid, GraphQL::Types::ISO8601Date, null: true
    field :auto_withdrawl, Boolean, null: true
    field :bank_account_name, String, null: true
    field :amount_owed, Float, null: true
    field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
