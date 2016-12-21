require_relative 'message_filter'

describe MessageFilter do
  shared_examples 'with argument "foo"' do
    it { is_expected.to be_detect('hello from foo') }
    it { is_expected.not_to be_detect('hello, world!')}
  end
  context MessageFilter, 'with argument "foo"' do
    subject { MessageFilter.new('foo') }
    it_behaves_like 'with argument "foo"'
  end
  context MessageFilter, 'with argument "foo", "bar"' do
    subject { MessageFilter.new('foo', 'bar') }
    it {is_expected.to be_detect('hello from bar')}
    it_behaves_like 'with argument "foo"'
  end

end


describe 'twitter test sample' do
  it 'エラーが起きたら通知する事' do
    twitter_client_mock = double('Twitter client')
    allow(twitter_client_mock).to receive(:update).with('今日は晴れです')
    # expect(twitter_client_mock).to receive(:update)
    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    # notifyメソッドが呼ばれることを検証する
    # expect(weather_bot).to receive(:notify)
    expect{ weather_bot.tweet_forecast }.not_to raise_error
    weather_bot.tweet_forecast
  end
  it '「天気」を含むツイートを返すこと' do
    status_mock = double('Status')
    allow(status_mock).to receive(:text).and_return('西脇市の天気は曇りです')

    twitter_client_mock = double('Twitter client')
    allow(twitter_client_mock).to receive(:search).and_return([status_mock])
    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)

    expect(weather_bot.search_first_weather_tweet).to eq '西脇市の天気は曇りです'
  end
end
