class PlayersController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		respond_to do |format|
			format.html
			format.json { render json: Player.all }
		end
	end

end
