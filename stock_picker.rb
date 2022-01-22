stock_prices = [17,3,6,9,15,8,6,1,10]
buy_dates = [0,1,2,3,4,5,6,7,8,9]
sell_dates = []
sell_value = []
profit_array = []

stock_prices.each_with_index do |value, day|
    sell_value.append(stock_prices[day..].max) 
    sell_dates.append()
end

stock_prices.each_with_index do |value, day|
profit_array[day] = sell_value[day] - stock_prices[day]
end
print profit_array
print sell_value


stock_prices.each_with_index do |value, day|
sell_dates.append(stock_prices.index (sell_value[day]))
end
print sell_dates

best_index = profit_array.index(profit_array.max)

puts "The best date to buy is day #{buy_dates[best_index]} and then to sell on #{sell_dates[best_index]}
making #{profit_array[best_index]}"
