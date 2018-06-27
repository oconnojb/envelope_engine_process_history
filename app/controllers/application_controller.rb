class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
  end

  get '/test' do
    @envelopes = Envelope.all

    erb :test
  end

  get '/test/:id' do
    @env = Envelope.find(params[:id])
    @attributes = Envelope.all.first.attributes.collect {|att, val| att if att != "id"}.compact
    erb :testshow
  end

  get '/w1' do
    @envelopes = Envelope.all
    @attributes = Envelope.all.first.attributes.collect {|att, val| att if att != "id"}.compact
    erb :bootstrap_table
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
