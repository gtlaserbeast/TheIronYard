require 'sinatra'

get '/' do
  'Hello World'
end

get '/sam_is_awesome' do
  "Only sam wants to be awesome today"
end