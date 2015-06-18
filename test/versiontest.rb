require_relative "../test_helper"
require_relative "../inc/builddata"
require "test/unit"
require 'rack/test'
require_relative '../main'

class TestVersion < Test::Unit::TestCase
  def test_VersionCommitString
    assert_not_equal(nil, CIgetcommit())
  end
  def test_VersionBuildString
    assert_not_equal(nil, CIgetbuild())
  end
  def test_VersionString
    assert_not_equal(nil, getCIstring())
  end
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
  def test_homepage
    get '/'
    assert last_response.ok?
  end
end
