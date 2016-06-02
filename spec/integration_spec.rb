require 'rack/test'

RSpec.describe VideosApplication do
  include Rack::Test::Methods

  let(:app) { described_class.new }

  it 'responds with dummy FIXME' do
    get '/any'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('FIXME')
  end

  xit 'responds with videos' do
    get '/videos'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Video #0, Video #1')
  end
end
