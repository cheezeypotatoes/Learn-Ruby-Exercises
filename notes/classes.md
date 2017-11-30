# Classes

some examples of kinds or *classes* of Objects:

strings, floats, integers, arrays, true, false. In Ruby classes are capitalized... *String, Float, Integer, Array* etc.

to create a new object of a certain class use *new*

```
a = Array.new  + [12345]  # Array  addition.
b = String.new + 'hello'  # String addition.
c = Time.new

puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s
```
```
a = [12345]
b = hello
c = 2017-09-23 11:57:39 -0700
```

### The Time Class

the time class represents a moment in time. you can add or subtract numbers to and from the time.

Example:

```
time  = Time.new   # The moment I generated this web page.
time2 = time + 60  # One minute later.

puts time
puts time2
```
```
2017-09-23 11:57:39 -0700
2017-09-23 11:58:39 -0700
```
each whole 1 represents 1 second so 60 represents 1 minute.

You can also make a time for a specific moment using Time.mktime

```
puts Time.mktime(2000, 1, 1)          # Y2K.
puts Time.mktime(1976, 8, 3, 10, 11)  # When I was born.
```

```
2000-01-01 00:00:00 -0800
1976-08-03 10:11:00 -0700
```
### Hashes

Hashes are like arrays except they are not ordered like arrays are (first object is 0 and so on..). The have slots and the slots are addressed by any kind of object but usually a string.

Example of a hash compared to an arrays
```
colorArray = []  # same as Array.new
colorHash  = {}  # same as Hash.new

colorArray[0]         = 'red'
colorArray[1]         = 'green'
colorArray[2]         = 'blue'
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end
```
```
red
green
blue
strings:  red
numbers:  green
keywords:  blue
```
the array is ordered and addressed 0 thru array.length -1. The hash is not ordered and addressed by strings.

### Extending classes

remember the method to give the English phrase for a given integer? It wasn't an integer method, though; it was just a generic "program" method. Wouldn't it be nice if you could write something like 22.to_eng instead of englishNumber 22? Here's how you would do that:

```
class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end

    english
  end
end

# I'd better test on a couple of numbers...
puts 5.to_eng
puts 58.to_eng
```
```
five
fifty-eight
```
in this example we left the default "program" object and entered the Integer Class and defined the method there for all integers to use. thus we *extended* the Integer Class

### Creating Classes

Example to make dice in Ruby you could make a Class called Die
```
class Die

  def roll
    1 + rand(6)
  end

end

# Let's make a couple of dice...
dice = [Die.new, Die.new]

# ...and roll them.
dice.each do |die|
  puts die.roll
end
```
```
6
2
```

### Instance Variables
Instance variables are available when the method is finished running, a local variable in the method goes poof when the method finishes executing. An instance variable is identified with an @

example:
```
class Die

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
```
```
4
4
6
6
```

you can use *initialize* to start an instance variable with a value like here we can set the initial @numberShowing to what ever we want. I'll just set it to 6 before we roll it.

```
class Die

  def initialize
    @numberShowing = 6
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

puts Die.new.showing
```
```
6
```
an objects initialize method is always called
