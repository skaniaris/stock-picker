def stock_picker(prices)

    best_buy = 0 
    best_sell = 0

    to_sell = prices.clone 

    to_sell.map do |buy_price|
    best_buy = buy_price 
    prices.shift
    best_sell = prices.max

if best_sell == nil
        p [best_buy, "none"]
elsif best_sell <= best_buy
        p [best_buy, "none"]
else 
        p [best_buy, best_sell]
    end 
end
end 

stock_picker([17,3,6,9,15,8,6,1,10])