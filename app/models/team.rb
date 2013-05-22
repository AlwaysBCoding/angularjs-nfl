class Team < ActiveRecord::Base
# ASSOCIATIONS
	has_many :players

# VALIDATIONS

# SCOPES

# SPECIAL FEATURES

# DELEGATIONS

# CALLBACKS

# CLASS METHODS

# INSTANCE METHODS
	# CONFIG
	def display_name
		"#{city.titleize} #{name.titleize}"
	end

	def to_param
		self.abbr
	end

	# FUNCTIONALITY
	def roster
		players
	end


# PRIVATE METHODS
private

end
