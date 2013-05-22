class Player < ActiveRecord::Base
# ASSOCIATIONS
	belongs_to :team

# VALIDATIONS

# SCOPES

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS
	# CONFIG
	def display_name
		"#{firstname.titleize} #{lastname.titleize} (#{position.upcase})"
	end

	def as_json(options = {})
		{
			firstname: firstname,
			lastname: lastname,
			position: position,
			height: height,
			weight: weight,
			age: age,
			experience: experience,
			college: college,
			status: status
		}
	end

	def age
		birthdate.present? ? (Date.today - birthdate).to_i / 365 : nil ;
	end

	def display_height
	end

	# FUNCTIONALITY

# PRIVATE METHODS
private
end
