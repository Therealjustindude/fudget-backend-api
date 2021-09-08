class Mutations::UpdateUser < Mutations::BaseMutation
	description "Updates User"
	argument :id, ID, required: true
	argument :first_name, String, required: false
	argument :last_name, String, required: false

	field :user, Types::UserType, null: false
	field :errors, [String], null: false

	def resolve(id:, first_name:, last_name:)
		user = User.find_by(id: id)
		
		user.update(first_name: first_name, last_name: last_name)
		if user.save
			{user: user, errors: []}
		else	
			{user: nil, errors: user.errors.full_message}
		end
	end
end