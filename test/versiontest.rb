require_relative "../test_helper"
require_relative "../inc/builddata"
require "test/unit"

class TestVersion < Test::Unit::TestCase
  def test_VersionString
    assert_not_equal(nil, getCIstring())
  end
end
