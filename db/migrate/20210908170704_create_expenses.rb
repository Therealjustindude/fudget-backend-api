class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.date :date_due
      t.date :date_paid
      t.boolean :auto_withdrawl
      t.string :bank_account_name
      t.float :amount_owed
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
