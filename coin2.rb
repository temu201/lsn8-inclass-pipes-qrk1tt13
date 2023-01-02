
def coin_value(amount)
	cents = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}

	change = {:quarter => 0, :dime => 0, :nickle => 0, :penny => 0}
	cents.each do |key, value|
		while value <= amount
			change[key] += 1
			amount = amount - value
		end
	end

