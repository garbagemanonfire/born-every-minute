# ./test/sample_test.rb

require './sample_test_helper.rb'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def test_hash
  #   assert_equal Hash, suckers.class
  # end

  def test_home_page_exists
    get '/'
    assert last_response.ok?
  end

  def test_thanks_page_exists
    get '/thanks'
    assert last_response.ok?
  end

  def test_suckers_page_exists
    get '/suckers'
    assert last_response.ok?
  end

  def test_details_page_exists
    get '/details'
    assert last_response.ok?
  end


end

#Old Tests


  # def test_hello_world
  #   get '/'
  #   assert last_response.ok?
  #   assert_equal "Hello, World!", last_response.body
  # end

  # def test_post
  #   post '/'
  #   assert last_response.ok?
  #   assert_equal "Caught a post", last_response.body
  # end