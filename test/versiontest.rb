require_relative "../test_helper"
require_relative "../inc/builddata"
require_relative "../inc/pagevars"
require "test/unit"
require 'rack/test'
require_relative '../main'

class TestVersion < Test::Unit::TestCase
  def test_VersionCommitString
    assert_not_equal(nil, Builddata.CIgetcommit())
  end
  def test_VersionBuildString
    assert_not_equal(nil, Builddata.CIgetbuild())
  end
  def test_VersionString
    assert_not_equal(nil, Builddata.getCIstring())
  end
  def test_VersionStringWrapper
    assert_not_equal(nil, Pagevars.setVars("CIbuild"))
  end
  def test_VersionStringWrapperCatch
    assert_equal("Error", Pagevars.setVars("NA"))
  end
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
  def test_homepage
    get '/'
    assert last_response.ok?
  end
  def test_homepricingpage
    get '/pricing'
    assert last_response.ok?
  end
  def test_homefeaturespage
    get '/features'
    assert last_response.ok?
  end
  def test_apihome
    get '/api'
    assert last_response.ok?
  end
  def test_apiversion
    get '/api/version'
    assert last_response.ok?
end
