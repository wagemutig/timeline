require 'sinatra'
require 'haml'

class TL < Sinatra::Base

set :views, settings.root + '/app/views/'
set :public_dir, settings.root + '/app/public/'

get '/' do
  redirect to('/timeline')
end

get '/timeline' do
  haml :timeline
end

get '/gbm/zeitgeist' do
  haml :zeitgeist
end

get '/gbm/aguacu' do
  haml :aguacu
end

get '/oi/migros' do
  haml :migros
end

get '/oi/lightbox' do
  haml :lightbox
end

get '/ma/lecture-voter' do
  haml :'lecture-voter'
end

get '/ma/node-rover' do
  haml :'node-rover'
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
