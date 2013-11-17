class Meeting < ActiveRecord::Base
	#has_many :users, :through => :meetings_users
	has_and_belongs_to_many :users
end
