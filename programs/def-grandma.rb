puts 'Say something to you\'re dear ole grandmother, She is here all the way from Clevland'
say = ''
bye_count = 0
while say != 'BYE'
  while bye_count < 3
  say = gets.chomp
  if say != say.upcase
    puts 'HUH??? SPEAK UP SONNY GRANDMA\'S DEF'
  else
    if say == 'BYE'
      bye_count = bye_count + 1
      puts bye_count
      if bye_count == 3
        puts 'OK, BYE SWEETIE PIE COME GIVE GRAMS A KISS BYE'
      else
        rand_num = (rand(21))
        year = 1930 + rand_num
        puts 'NO, NOT SINCE ' + year.to_s
      end
      else
        rand_num = (rand(21))
        year = 1930 + rand_num
        puts 'NO, NOT SINCE ' + year.to_s
      end
    end
  end
end
