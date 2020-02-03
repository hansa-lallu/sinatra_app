require 'sinatra'

get '/' do
  "Hello"
end

get '/secret' do
  'Secret Hello'
end

get '/secret2' do
  'Secret Hello2'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end