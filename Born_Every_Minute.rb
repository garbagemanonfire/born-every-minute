# ./Born_Every_Minute.rb
require 'sinatra'
require 'pry'
require './userrecords.rb'
enable :sessions
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

get '/' do
  erb :home
end

get '/thanks' do
  erb :thanks
end

post '/' do
  @username = params[:username]
  @email = params[:email]
  @twitter = params[:twitter]
  session[:value] = [{ username: @username },{ email: @email },{ twitter: @twitter }]
  redirect to('/thanks')
  # @username = params[:username]
  # @@user = User.new
  # @@user.append_to_hash(params[:username], params[:email], params[:twitter])
end

get '/suckers' do
  # @test = @@user.get_users
  erb :suckers
end

get '/details' do
  erb :details
end


__END__
