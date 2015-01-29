require 'sinatra'
require 'haml'

class TL < Sinatra::Base

get '/' do
  'Hello Sinatra'
end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
