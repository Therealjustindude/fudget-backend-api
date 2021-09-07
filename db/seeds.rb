# -------------------User One------------------------------------------------

user_one = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'password')

# --------------------User One Expenses--------------------------------------

user_one.expenses.create(name: 'Rent', date_due: '09/07/2021', date_paid: '' , auto_withdrawl: true, bank_account_name: 'Chase Joint', amount_owed: 1200.68)
user_one.expenses.create(name: 'Netflix', date_due: '09/02/2021', date_paid: '09/01/2021' , auto_withdrawl: true, bank_account_name: 'Justin\'s Chase', amount_owed: 14.98,)
user_one.expenses.create(name: 'Internet', date_due: '09/14/2021', date_paid: '' , auto_withdrawl: true, bank_account_name: 'Chase Joint', amount_owed: 120.55,)

# --------------------User Two-----------------------------------------------

user_two = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'password')

# --------------------User Two Expenses--------------------------------------

user_two.expenses.create(name: 'Rent', date_due: '09/07/2021', date_paid: '' , auto_withdrawl: true, bank_account_name: 'Chase Joint', amount_owed: 1400.65,)
user_two.expenses.create(name: 'Netflix', date_due: '09/02/2021', date_paid: '09/01/2021' , auto_withdrawl: true, bank_account_name: 'Justin\'s Chase', amount_owed: 14.98,)
user_two.expenses.create(name: 'Internet', date_due: '09/14/2021', date_paid: '' , auto_withdrawl: true, bank_account_name: 'Chase Joint', amount_owed: 80.32,)

# ----------------------------------------------------------------------------
