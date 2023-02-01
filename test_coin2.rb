
require 'minitest/autorun'
require_relative 'coin2.rb'

class TestCoinChanger < Minitest::Test

	def test_empty_hash
		assert_equal(4, coin_value(0).length)