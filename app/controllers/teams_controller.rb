class TeamsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		respond_to do |format|
			format.html
			format.json { render json: Team.all }
		end
	end

	def create
		respond_with Team.create(team_params)
	end

	def roster
		team = Team.find_by_abbr!(params[:id].downcase)

		respond_to do |format|
			format.html
			format.json { render json: team.roster }
		end

	end

private
	def team_params
		params.require(:team).permit(:city, :conference, :division, :name, :abbr)
	end

end
