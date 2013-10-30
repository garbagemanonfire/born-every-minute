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
  if session.key?(:users)
    session[:users] << { username: params["username"],
                         email: params["email"],
                         twitter: params["twitter"] }
  else
    session[:users] = []
    session[:users] << { username: params["username"],
                         email:  params["email"],
                         twitter: params["twitter"] }
  end
  redirect to('/thanks')
end

get '/suckers' do
  # @test = @@user.get_users
  erb :suckers
end

get '/details' do
  erb :details
end

get '/details/:string' do
  erb :details, :locals => { :user_index => params[:string] }
end

post '/clear' do
  session.clear
  redirect '/'
end


__END__
