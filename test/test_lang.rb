ENV['RACK_ENV'] = 'test'
require 'test/unit'
require 'rack/test'

require File.expand_path '../../app.rb', __FILE__

class HomepageTest < Test::Unit::TestCase
  include Rack::Test::Methods
  def app() Sinatra::Application end

  def test_japanese
    get '/ja'
    assert last_response.ok?
  end

  def test_vietnamese
    get '/vi'
    assert last_response.ok?
  end

  def test_chinese
    get '/cn'
    assert last_response.ok?
  end

  def test_english
    get '/en'
    assert last_response.ok?
  end
end
