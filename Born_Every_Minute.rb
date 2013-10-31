# ./Born_Every_Minute.rb
require 'sinatra'
require 'pry'
# require './userrecords.rb'
enable :sessions

get '/' do
  erb :home
end

get '/thanks' do
  erb :thanks
end

post '/' do
  session[:users] = [] unless session[:users]
  session[:users] << { username: params['username'],
                       email: params['email'],
                       twitter: params['twitter'] }
  redirect to('/thanks')
end

get '/suckers' do
  erb :suckers
end

get '/details' do
  erb :details
end

get '/suckers/:user_id' do
  erb :details, locals: { 'user_index' => params[:user_id] }
end

post '/clear' do
  session.clear
  redirect '/'
end


__END__
