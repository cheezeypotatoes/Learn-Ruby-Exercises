# Methods

methods we have used so far in this lesson

* gets
* puts
* chomp
* +
* -
* *
* /
* to_s
* to_i
* to_f

objects are like nouns and methods are like verbs
just as a verb needs an noun, a method needs an object.
syntax is Object.method

examples
```
puts 'hello '.+ 'world'
puts (10.* 9).+ 9
```

```
hello world
99
```
this is why we CAN do 'batter ' times 3 but NOT 3 times 'batter '
 the string 'batter ' is the object and * 3 is the method . So saying batter 3 times is OK
```
put 'batter '.*3
```
saying 3 batter times is not OK.
```
3.*'batter '
```
it wont work.

note: the thing to take away is every method is being done by some object, even if it doesn't have a dot in front of it


## Fancy String methods

### reverse
```
var = 'This is a string with multiple words in it.'
puts var.reverse
puts var
```
```
".ti ni sdrow elpitlum htiw gnirts a si sihT"
This is a string with multiple words in it.
```

reverse doesn't destroy the original string.

### length

```
var = 'This is a string with multiple words in it.'
puts var.length
puts var
```
```
This is a string with multiple words in it.
43
```

Some examples to change the case of string letters
```
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
```
```
AABBCCDDEE
aabbccddee
AaBbCcDdEe
Aabbccddee
 a
aAbBcCdDeE
```
## Center and Justify right and left

```

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
```
```

--> text <--                            
              --> text <--              
                            --> text <--
--> text <--                --> text <--
```

## Additional math methods
```
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
```
```
25
2.23606797749979
2
1
1
```

### Absolute value
```
puts((5-2).abs)
puts((2-5).abs)
```
```
3
3
```

## Random Number Generator
### Rand

```
puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')
```
```
0.49053724230465723
0.6789349053849327
0.8179961941715282
24
9
75
0
0
0
87040684916920093246763702989785752796190167303654531863677
The weatherman said there is a 17% chance of rain,
but you can never trust a weatherman.
```
Note that I used rand(101) to get back numbers from 0 to 100, and that rand(1) always gives back 0


to return the same random numbers in the same sequence on two different runs of your program use a seed or srand.


```
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
```
```
24
35
36
58
70

24
35
36
58
70
```

It will do the same thing every time you seed it with the same number. If you want to get different numbers again (like what happens if you never use srand), then just call srand 0.

## The Math object

```
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
```
```
3.141592653589793
2.718281828459045
0.5000000000000001
0.9999999999999999
2.0
1.618033988749895
```
