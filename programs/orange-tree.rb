class OrangeTree
  def initialize
    @age = 0
    @feetTall = 0
    @oranges = 0
    @orangesPicked = 0
    @orangesProducedAnually = 0
  end

  def height
    puts 'Your tree is ' + @feetTall.to_s + ' feet tall.'
  end

  def countOranges
    puts 'Your tree has ' + @oranges.to_s + ' oranges to pick.'
  end

  def pickOrange
    if @oranges < 1
      puts 'You have no oranges to pick'
    else
      @orangesPicked = @orangesPicked + 1
      @oranges = @oranges - 1
      puts 'You have picked ' + @orangesPicked.to_s + ' oranges.'
      countOranges
    end
  end

  def oneYearPasses
    @feetTall = @feetTall + 1
    height
    @age = @age + 1
    puts 'Your tree is now ' + @age.to_s + ' old.'
    @orangesPicked = 0
    if @oranges > 0
      @oranges = 0
    end

      if @age == 15
        puts 'Your tree has passed away!!'
        exit
      end

    if @age <= 2
      @orangesProducedAnually = 0
    else
      @orangesProducedAnually = @orangesProducedAnually + 10
      @oranges = @orangesProducedAnually
      countOranges
    end
  end

end

tree = OrangeTree.new
commands = ['pick', 'count', 'height', 'age', 'exit']
# pick = tree.pickOrange
# count = tree.countOranges
# height = tree.height
# age = tree.oneYearPasses
command = ' '
while command != 'exit' do
  puts 'please enter tree command'
  command = gets.chomp
  commands.index(command)
  if commands.index(command) == nil
    puts 'Command not recognized, try again'
  else
    # puts commands[commands.index(command)]
    if command == 'pick'
      tree.pickOrange
    end
    if command == 'count'
      tree.countOranges
    end
    if command == 'height'
      tree.height
    end
    if command == 'age'
      tree.oneYearPasses
    end
  end
end
