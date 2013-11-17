class MembersController < ApplicationController
	before_action :authenticate_user!
  def index
  	@meetings = Meeting.all
  	@meeting = Meeting.find(Meeting.all.count)
  end

  def participate
    current_user.meetings << Meeting.find(Meeting.all.count)
    redirect_to :root
  end

end
