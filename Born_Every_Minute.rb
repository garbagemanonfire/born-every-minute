# ./Born_Every_Minute.rb
require 'sinatra'
require 'pry'
# require 'sinatra/static_assets'

# We us "classic" mode where you don't actually see the class
# inheriting from Sinatra::Base and you don't start the app with
# rackup. This makes the object structure less obvious but lets
# Sinatra do more of the behind-the-scenes

# get '/' do
#   "Hello, World!"
# end

# post '/' do
#   "Caught a post" 
# end

require './userrecords.rb'

get '/' do
  erb :home
end

get '/thanks' do
  erb :thanks
end

post '/' do
  @username = params[:username].to_s
  @email = params[:email].to_s
  @twitter = params[:twitter].to_s
  @@user = User.new
  @@user.append_to_hash(@username, @email, @twitter)
  erb :thanks, :locals => {@username => params[:username]}
end

get '/suckers' do
  test = @@user.get_users
  erb :suckers, :locals => {test => @@user.get_users}
end


__END__
