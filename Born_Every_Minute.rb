# ./Born_Every_Minute.rb
require 'sinatra'
require 'pry'
#require './userrecords.rb'
enable :sessions

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

post '/clear' do
  session.clear
  redirect '/'
end


__END__
