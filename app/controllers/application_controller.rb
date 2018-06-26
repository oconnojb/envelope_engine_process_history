class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
  end

  get '/show' do
    @envelopes = Envelope.all
    erb :show
  end

  get '/w2' do
    "W2"
  end
end
