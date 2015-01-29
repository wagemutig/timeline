require 'sinatra'
require 'haml'

class TL < Sinatra::Base

set :views, settings.root + '/app/views/'
set :public_dir, settings.root + '/app/public'

get '/' do
  redirect to('/timeline')
end

get '/timeline' do
  haml :timeline
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
