class SecondController < ApplicationController
	def index
		require 'twitter'
    	require 'pp'

	    clientA = Twitter::REST::Client.new do |config|
	      config.consumer_key = "AzGbiKI836pT5VpclCEkA"
	      config.consumer_secret = "krHGG0EY1j2TUOwClz2AAFfBWqLdrj4HeJgxkDIvqY"
	      config.oauth_token = "885803346-mLGDuoMi9XYgL1520axXDFZeUY61FUay7hFbMYYv"
	      config.oauth_token_secret = "e2YgnoxZcLYbSpUDYfFfComcAMzHgt5UnVhqAoc5OBmd3"
	    end

	    timelineA =clientA.user_timeline({count: 1})
	    timelineA.each do |time|
	      @timelineA = time.text
	      p @timelineA

	      if time.geo.lat
	        @idoA = time.geo.lat
	        p @idoA
	      end

	      if time.geo.long
	      	@kedoA = time.geo.long
	      	p @kedoA
	      end

	      @jikokuA = time.created_at
	      p @jikokuA
	    end





	 	clientB = Twitter::REST::Client.new do |config|
	      config.consumer_key = "cnLgdRfkZK92rBlUu3DmGy2WF"
	      config.consumer_secret = "2f9w75IcQEfQovVT1PUUdB522NKNzwRWOVckCZoSrDZOjxb48z"
	      config.oauth_token = "2669036568-TcoLvPY25K9FUu4FIRfCEEKjhmEq3XEtP7WsKqP"
	      config.oauth_token_secret = "OGwRaDMlK0kDVgQmvC6vQdmw8wF4WLgR77AeqaQu0LN9C"
	    end

	    timelineB =clientB.user_timeline({count: 1})
	    timelineB.each do |time|
	      @timelineB = time.text
	      p @timelineB

	      if time.geo.lat
	        @idoB = time.geo.lat
	        p @idoB
	      end

	      if time.geo.long
	      	@kedoB = time.geo.long
	      	p @kedoB
	      end

	      @jikokuB = time.created_at
	      p @jikokuB
	    end

	end
end
