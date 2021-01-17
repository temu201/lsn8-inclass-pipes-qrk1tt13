def change(amount)

	exact_change = []
	coin_value = {quarter:25, dime:10, nickle:5, penny:1}
	.each do |coin, key|
		exact_change <<