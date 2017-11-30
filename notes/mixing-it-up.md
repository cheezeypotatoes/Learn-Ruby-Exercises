# Mixing it up

Chapters 1-3 looked at 3 different types of OBJECTS numbers,letters,variables. Now to mix it up.


## Conversions

to_s converts a number value to a string with the same value

```
var1 = 2
var2 = '5'

puts var1.to_s + var2'
```
```
25
```

to_i and to_f will convert a string to an integer or a float respectively.

```
var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i
```
```
25
7
```

note that to_s ot to_i did not change the value of the original variable. They remain the same until changed with an = sign.

```
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
```
```
15.0
99.999
99

5
0
0.0

stringy
3
```


note the to_i conversions involving strings. the to_i method ignores the first thing it doest understand and the rest of the string after that.

## Another Look at puts

consider the following
```
puts 20
puts 20.to_s
puts '20'
```
```
20
20
20
```
all three are the same because puts always does a to_s before sending to the display. puts is really *put string*

## gets and chomp

gets means *get string* and will only retrieve strings.

```
puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'
```
gets listens for the string to be entered which in this case is your name, but
there is a slight problem...
```
Hello there, and what's your name?
Chris
Your name is Chris
?  What a lovely name!
Pleased to meet you, Chris
.  :)
```
when you type your name and press enter, gets picks up the enter as part of the string. that is what chomp is for.
```
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'
```
```
Hello there, and what's your name?
Chris
Your name is Chris?  What a lovely name!
Pleased to meet you, Chris.  :)
```

chomp takes off any *Enters* hanging out at the end of a string. Notice that since name is pointing to gets.chomp, we don't ever have to say name.chomp; name was already chomped.
