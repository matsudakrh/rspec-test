class MessageFilter
  def initialize(*words)
    @words = words
  end
  def detect?(text)
    @words.any? { |w| text.include?(w) }
  end
end

require 'twitter'

class WeatherBot
  def search_first_weather_tweet
    twitter_client.search('天気').first.text
  end
  def tweet_forecast
    twitter_client.update '今日は晴れです'
  rescue => e
    notify(e)
  end
  def twitter_client
    Twitter::REST::Client.new
  end
  def notify(error)
    # エラーの通知

  end
end

#
# class User
#   def initialize(name)
#     @name = name
#   end
# end
