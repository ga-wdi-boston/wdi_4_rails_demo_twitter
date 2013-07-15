class User < ActiveRecord::Base
	has_many :tweets
	has_many :favorites
	
	has_many :followings
	has_many :friends, through: :followings, source: 'followed'

	attr_accessible :name, :screenname, :description, :email,
					:location, :password
					
	validates_uniqueness_of :screenname
	validates_presence_of :screenname
	validates :screenname, length: { maximum: 20 }
	validates :description, length: { maximum: 50 }
	validates :email, uniqueness: true
	validates :password, length: { in: 8..20 }


# Ignore this
	# def self.options
 #    	User.all.map{ |option| [option[:screenname], option[:id]] }
 #  	end
end