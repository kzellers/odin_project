#stock_picker.rb
#description: chooses best day to buy and sell stock
#usage: ruby stock_picker.rb

def pick_stocks(stocks)
   stocks =  stocks[0]
   max_profit = 0
   min_stock = stocks[0]
   index1_temp = 0
   index1_lock = 0
   index2 = 0
   for i in 1...stocks.length()
      if stocks[i] < min_stock
         min_stock = stocks[i]
         index1_temp = i
      else
         if max_profit < (stocks[i]-min_stock)
            max_profit = stocks[i]-min_stock
            index2 = i
            index1_lock = index1_temp
         end
      end
   end
   if index1_lock == index2
      puts "Not a good time to invest"
   else
      puts "I would recommend buying on Day #{index1_lock + 1} and selling on Day #{index2 + 1}."
   end
end


puts "Enter the number of days to track"
num = Integer(gets)
stocks = []
count = 1
num.times do
  if stocks == []
     print "Enter the Day 1 stock value: "
  else
     print "Enter the Day #{count} stock value: "
  end
  s = Integer(gets.chomp)
  stocks.push(s)
  count += 1
end
   

pick_stocks([stocks])
