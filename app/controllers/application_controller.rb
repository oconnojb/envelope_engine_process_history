class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
  end

  get '/show' do
    @envelopes = Envelope.unscoped
    if params[:order] && ["asc", "desc"].include?(params[:sort_mode])
      order = params[:order].split(",").map {|o| "#{o} #{params[:sort_mode]}" }.join(", ")
      @envelopes = @envelopes.order(order)
    end
    @envelopes = @envelopes.paginate(:per_page => 10, :page => params[:page])
    erb :show
  end

  get '/w2' do
    "W2"
  end
end
