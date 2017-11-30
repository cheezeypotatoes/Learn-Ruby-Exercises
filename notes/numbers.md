# Learn to Program Chapter 1 Notes


### Intro to puts

simple Program
```
puts 1+2
```

returns 3
puts simply writes on the screen whatever comes after it.
Could have just said
```
puts 3
```

# Integers / Floats
integers are whole numbers with no decimal points
floats are numbers that are not whole and have a decimal points

example of Integers
```
5
-203
9999999
0
```
example of Floats
```
54.234
0.003
-234.45
0.0
```
simple math operations
```
puts 1.0 + 2.0
puts 2.0 * 2.0
puts 8.0 / 2.0
puts 2.0 - 1.0
```
will return respectively
```
3.0
4.0
4.0
1.0
```

try with Integers
```
puts 1 + 2
puts 2 * 2
puts 8 / 4
puts 2 - 1
```

returns Integers
```
3
4
4
1
```

but what about?
```
puts 9 / 2
```
returns
```
4
```
that is because integer division returns an integer. 4 is the correct answer rounded down from 4.5. if you need to get back the float then use floats in your division
```
puts 9.0 / 2.0
```
will return
```
4.5
```

what is integer division good for? Well you if you want to know how many $3 cheeseburgers you can get with $10

```
puts 10 / 3
```

will return
```
3
```
you get a dollar back but integer division doesnt care. It just knows you can get 3 cheeseburgers for that 10 bucks


you can add parentheses for more complex statements.

```
puts 6 * (10 - 4) / 6
puts 6 * ((10 - 4) + 2) /6
```

returns
```
6
8
```


Write a program which tells you:

   how many hours are in a year?
   how many minutes are in a decade?
   how many seconds old are you? 
