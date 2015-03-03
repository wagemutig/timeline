require 'bundler/setup'
require 'sinatra'

class TL < Sinatra::Base

set :views, settings.root + '/app/views/'
set :public_dir, settings.root + '/app/public/'

get '/' do
  redirect to('/timeline')
end

get '/timeline' do
  erb :timeline
end

get '/gbm/zeitgeist' do
  erb :zeitgeist
end

get '/gbm/aguacu' do
  erb :aguacu
end

get '/oi/migros' do
  erb :migros
end

get '/oi/lightbox' do
  erb :lightbox
end

get '/ma/lecture-voter' do
  erb :'lecture-voter'
end

get '/ma/node-rover' do
  erb :'node-rover'
end

get '/palantir' do
  erb :'palantir'
end

get "/stylesheets/screen.css" do
  content_type 'text/css'
  response['Expires'] = (Time.now + 60*60*24*356*3).httpdate
  sass :"styles/sass"
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
