class TeamsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	respond_to :json

	def index
		respond_to do |format|
			format.html
			format.json { render json: Team.all }
		end
	end

	def create
		respond_with Team.create(team_params)
	end

private
	def team_params
		params.require(:team).permit(:city, :conference, :division, :name, :abbr)
	end

end
