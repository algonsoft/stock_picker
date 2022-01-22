def stock_picker(stock_prices)

sell_dates = []
sell_value = []
profit_array = []
stock_picker_array = []

stock_prices.each_with_index do |value, day|
    sell_value.append(stock_prices[day..].max) 
end

stock_prices.each_with_index do |value, day|
profit_array[day] = sell_value[day] - stock_prices[day]
end

stock_prices.each_with_index do |value, day|
sell_dates.append(stock_prices.index (sell_value[day]))
end

best_index = profit_array.index(profit_array.max)
stock_picker_array[0] = best_index
stock_picker_array[1] = sell_dates[best_index]

puts "#{stock_picker_array}"
puts "For a profit of $#{sell_value[best_index]} - $#{stock_prices[best_index]} = $#{profit_array[best_index]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
