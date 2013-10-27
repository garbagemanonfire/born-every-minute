# ./test/sample_test_helper.rb

ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'

require '../Born_Every_Minute.rb'