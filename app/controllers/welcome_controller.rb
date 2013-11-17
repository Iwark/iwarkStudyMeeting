class WelcomeController < ApplicationController
	before_action :welcome_auth
  def index
  	@meetings = Meeting.all
  end

  private
  def welcome_auth
  	redirect_to members_index_path if current_user
  end
end
