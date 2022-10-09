def change(amount)

	exact_change = []
	coin_value = {quarter:25, dime:10, nickle:5, penny:1}
	.each do |coin, key|
		exact_change << (coin * (amount / coin)) if amount >= coin
		amount = amount - (coin * (amount / coin))
	end
	exact_change
end


# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31