def change(amount)

	exact_change = []
	coin_value = {quarter:25, dime:10, nickle:5, penny:1}
	.each do |coin, key|
		exact_change << (coin * (amount / coin)) if amount >= coin
		amount = amount - (coin * (amount / coin))
	end
	exact_change
end


# Write a function that takes a number of cents, and that returns a ha