require_relative "../test_helper"
require_relative "../inc/builddata"
require "test/unit"

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
end
