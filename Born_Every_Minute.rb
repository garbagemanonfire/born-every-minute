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

get '/' do
  erb :home
end

get '/thanks' do
  erb :thanks
end


post '/' do
  erb :thanks, :locals => {:username => params[:username]}
  # @username = params[:username]
  # @email = params[:email]
  # @twitter = params[:twitter]
end

get '/suckers' do
  erb :suckers
end

# helpers do
#   def img(name)
#     "<img src='images/#{name}' alt='#{name}' />"
#   end
# end

__END__
