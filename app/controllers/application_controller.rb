class ApplicationController < ActionController::Base
	before_action :set_objects


	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	def set_objects

		# Stage.first.generate_fixture


		if params[:version_id]
			@version = Version.find(params[:version_id])
		end

		if params[:inscription_id]
			@incription = Inscription.find(params[:inscription_id].to_i)
		end

		if params[:user_id]
			@user = User.find(params[:user_id])
		end

		if params[:team_id]
			@team = Team.find(params[:team_id])
		end
	end
end
