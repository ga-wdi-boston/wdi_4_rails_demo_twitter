TweetsController < ApplicationController
	def index
		@tweets = Tweet.all
	end

	def show
		@tweet = Tweet.find(params[:id])
	end

	def new
		# Will tell why I need this in a second
		@tweet = Tweet.new
	end

	def create
		#Come back to this in a second
		@tweet = Tweet.new
		@tweet.save
	end

end