puts 'What is your favorite number?'
fav_num = gets.chomp
puts fav_num + ' eh?'
new_num = fav_num.to_i + 1
puts "I think it should be " + new_num.to_s
