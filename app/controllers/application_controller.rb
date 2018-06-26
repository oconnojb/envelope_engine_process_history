class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
  end

  get '/form' do
    @envelopes = Envelope.all
    erb :form
  end

  post '/edited' do
    @envelopes = Envelope.all
    erb :form2
  end

  get '/w2' do
    "W2"
  end
end
