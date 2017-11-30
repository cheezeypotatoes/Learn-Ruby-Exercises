class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end
  
  def cheat
    puts 'What number do you want to roll?'
    @numberShowing = gets.chomp
    if @numberShowing.to_i > 6
      puts 'Please... only 6 sides are available'
      cheat
    else
      puts 'you cheat rolled ' + @numberShowing
    end

  end

end

puts Die.new.showing
puts Die.new.roll
puts Die.new.cheat
