puts 'Please enter a starting year'
start_year = gets.chomp
puts 'Great! ' + start_year + ' was a great year. Now enter an ending year.'
end_year = gets.chomp
count_year = start_year.to_i
end_year = end_year.to_i


while count_year <= end_year
  if count_year % 4 == 0
    if count_year % 100 == 0
      if count_year % 400 == 0
        puts 'TRUE: ' + count_year.to_s + ' is a leap year'
      else # it is divisible by 100 but not divisble by 400 so not a leap year
        puts 'FALSE: ' + count_year.to_s + ' is NOT a leap year'
      end
    else # not divisible by 100 so it is a leap year
      puts 'TRUE: ' + count_year.to_s + ' is a leap year'
    end
  else # is not divisble by 4 so it is not a leap year
    puts 'FALSE: ' + count_year.to_s + ' is NOT a leap year'
  end
  count_year = count_year.to_i + 1
end
