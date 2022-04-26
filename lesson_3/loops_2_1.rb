count = 1
numbers = (1..5)

loop do until count > 5
  for number in numbers
    count += 1
    if number.odd? == true
    puts "#{number} is odd" 
    else puts "#{number} is even"
    end
    end
  end
end