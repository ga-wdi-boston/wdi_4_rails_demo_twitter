class User < ActiveRecord::Base
	has_many :tweets
	has_many :favorites
	# Do following here in a minute
	attr_accessible :name, :screenname, :description, :email,
					:location, :password
end