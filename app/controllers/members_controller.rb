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

  def cancel
  	if meeting = current_user.meetings.find_by(id:Meeting.all.count)
    	current_user.meetings.delete(meeting)
    end
    redirect_to :root
  end

end
