# Flow Control

## Comparison Operators
```
puts 1 > 2
puts 1 < 2
```
```
false
true
```
using or = to
```
puts 5 >= 5
puts 5 <= 4
```
```
true
false
```

equality and NOTequals

```
puts 1 == 1
puts 2 != 1
```
```
true
true
```
works with strings as Well

```
puts 'cat' < 'dog'
```
```
true
```
works basically alphabetically c comes before d so this is true
but you must downcase what you are comparing if there are capital letters involved. All caps come before lower case in lexicographical ordering.

## true / false

 true and false are not strings they are the special objects true and false but you could use .to_s on them.

 ## Branching

 If what comes after the if is true, we run the code between the if and the end. If what comes after the if is false, we don't.

 Often, we would like a program to do one thing if an expression is true, and another if it is false. That's what else is for:
```
puts 'I am a fortune-teller.  Tell me your name:'
name = gets.chomp
if name == 'Chris'
  puts 'I see great things in your future.'
else
  puts 'Your future is... Oh my!  Look at the time!'
  puts 'I really have to go, sorry!'
end
```
```
I am a fortune-teller.  Tell me your name:
Chris
I see great things in your future.
```
and with a different name
```
I am a fortune-teller.  Tell me your name:
Ringo
Your future is... Oh my!  Look at the time!
I really have to go, sorry!
```
nested if's
```
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end
```
```
Hello, and welcome to 7th grade English.
My name is Mrs. Gabbard.  And your name is...?
chris
chris?  You mean Chris, right?
Don't you even know how to spell your name??
yes
Hmmph!  Well, sit down!

```
and...
```
Hello, and welcome to 7th grade English.
My name is Mrs. Gabbard.  And your name is...?
Chris
Please take a seat, Chris.
```
tip: when making complex if elses, it helps to write out the end for each if else before writing the code inside each if else.
```
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
else
end
```
then fill in comments where code will be
```
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  # She's civil.
else
  # She gets mad.
end
```

then replace comments with working

```
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
  else
  end
end
```

## Looping

```
command = ''

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'
```
above will loop *while* the variable command does not equal the string of 'bye' if command becomes 'bye', the *while loop* ends and 'Come again soon!' is displayed.

```
Hello?
Hello?
Hi!
Hi!
Very nice to meet you.
Very nice to meet you.
Oh... how sweet!
Oh... how sweet!
bye
Come again soon!
```

## More Logic

using *or* in conditionals
```
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end
```
```
Hello, what's your name?
Katy
Hello, Katy.
What a lovely name!
```

other logical operators are *and* and *not*
```
iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )
```
```
true
false
false
false

true
true
true
false

true
false
```
