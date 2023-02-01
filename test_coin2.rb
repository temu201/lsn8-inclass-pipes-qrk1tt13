
require 'minitest/autorun'
require_relative 'coin2.rb'

class TestCoinChanger < Minitest::Test

	def test_empty_hash
		assert_equal(4, coin_value(0).length)
	end
	
	def test_hash_length
		assert_equal(4, coin_value(1).length)
	end
	
	def test_20_cent_returns_2_dimes
		assert_equal({:quarter => 0, :dime => 2, :nickle => 0, :penny => 0}, coin_value(20))