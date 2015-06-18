require_relative "../test_helper"
require_relative "../inc/builddata"
require "test/unit"

class TestVersion < Test::Unit::TestCase
  def testVersionString
    puts getCIstring()
  end
