require 'twitter'
 
namespace :twitter do
  desc "tweet hello"
  task :tweet => :environment do
    client = get_twitter_client
    tweet = "きなこかわゆすううううううううううううううう"
    update(client, tweet)
  end
end
 
def get_twitter_client 
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "AzGbiKI836pT5VpclCEkA"
    config.consumer_secret     = "krHGG0EY1j2TUOwClz2AAFfBWqLdrj4HeJgxkDIvqY"
    config.access_token        = "885803346-mLGDuoMi9XYgL1520axXDFZeUY61FUay7hFbMYYv"
    config.access_token_secret = "e2YgnoxZcLYbSpUDYfFfComcAMzHgt5UnVhqAoc5OBmd3"
   end
  client
end
 
def update(client, tweet)
  begin
    tweet = (tweet.length > 140) ? tweet[0..139].to_s : tweet
    client.update(tweet.chomp)
  rescue => e
    Rails.logger.error "<<twitter.rake::tweet.update ERROR : #{e.message}>>"
  end
end