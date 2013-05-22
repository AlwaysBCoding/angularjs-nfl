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
	def display_name
		"#{firstname.titleize} #{lastname.titleize} (#{position.upcase})"
	end

	def age
	end

	def display_height
	end

# PRIVATE METHODS
private
end
