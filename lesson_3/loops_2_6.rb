names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
p names.pop
break if names.length == 0
end