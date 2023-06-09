
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
	end

	def test_51_equals_2_quarters_1_penny
		assert_equal({:quarter => 2, :dime => 0, :nickle => 0, :penny => 1}, coin_value(51))
	end

	def test_50_returns_two_quarters
		assert_equal({:quarter => 2, :dime => 0, :nickle => 0, :penny => 0}, coin_value(50))
	end

	def test_65_returns_2Q_1D_1N
		assert_equal({:quarter => 2, :dime => 1, :nickle => 1, :penny => 0}, coin_value(65))
	end

	def test_99_returns_3Q_2D_4P
		assert_equal({:quarter => 3, :dime => 2, :nickle => 0, :penny => 4}, coin_value(99))
	end

	def test_15_returing_most_amount_of_change #testing to see if code is returing smallest amount of change
		assert_equal({:quarter => 0, :dime => 0, :nickle => 2, :penny => 5}, coin_value(15))
	end
		#test failed, expected 1 dime, 1 nickle. << what we wanted to happen
end