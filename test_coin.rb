
require 'minitest/autorun'
require_relative 'coin.rb'

class TestCoinChanger < Minitest::Test

	# def test_1_eq_1
	# 	assert_equal(1,1)
	# end

	# def test_1_cent_returns_penny
	# 	amount = 1
	# 	assert_equal([1], change(amount))
	# end

	# def test_5_cents_returns_one_nickle
	# 	amount = 5
	# 	assert_equal([5], change(amount))
	# end		

	# def test_7_cents_returns_1N_2P
	# 	amount = 7
	# 	assert_equal([5, 1, 1], change(amount))
	# end

	# def test_14_cents_returns_1D_4P
	# 	amount = 14
	# 	assert_equal([10, 1, 1, 1, 1], change(amount))
	# end

	# def test_25_cents_returns_1Q
	# 	amount = 25
	# 	assert([1], change(amount))
	# end

	# def test_36_cents_returns_1Q_1D_1P
	# 	amount = 36
	# 	assert_equal([25, 10, 1], change(amount))
	# end

	# def test_75_cents_returns_3Q
	# 	amount = 75
	# 	assert_equal([25, 25, 25], change(amount))
	# end

	def test_99_returns_3Q_2D_4P
		amount = change(99)
		assert_equal({quarter:3, dime:2, nickle: 0, penny:4}, amount)
	end

	# def test_99_returns_3Q_2D_4P
	# 	amount = 99
	# 	assert_equal {quarter: 3, dime: 2, penny: 4}, change(amount)
	# end
end