def stock_picker(price)
  log_result = []
  buy_price_index = 0
  price_length=price.length
  price.each_index do |index| 
    if index < price_length-1
      if price[buy_price_index] < price[index+1]
        log_result << [price[buy_price_index],price[index+1], price[index+1] - price[buy_price_index]]
      else
        log_result << [price[buy_price_index],price[index+1], price[index+1] - price[buy_price_index]]
        buy_price_index=index+1
      end
    end
  end
  result = log_result.max_by {|a, b, c| c }
  "for a profit of $#{result[1]} - $#{result[0]} = $#{result[2]}"
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]
# for a profit of $15 - $3 == $12



# 17<3     0,1
# 3<6=3    1,2  3,
# 3<9=6    1,3  3,6     6,
# 3<15=12- 1,4  6,12    12,
# 3<8=5    1,5  12,5    12,
# 3<6=3    1,6  12,3    12
# 3<1      1,7  12,
# 1<10=9   7,8  12,9    12  



# [10, 7, 5, 8, 11, 9, 3, 6]
# [2, 4]
# 10<7
# 7<5
# 5<8=3
# 5<11=6----
# 5<9=4
# 5<3
# 3<9=6

# [20, 18, 12, 15, 25, 10, 30]
# [2, 6]
# 20<18
# 18<12
# 12<15=3
# 12<25=13
# 12<10
# 10<30=20

