# Letters

groups of letters are called "strings" they are surrounded by quote marks ''

```
'this is a string'
'9999999'
'5.3'
'Snoopy say #$#$@#$ when he stubs his toe'
''
```
### puts and Letters

just like with numbers, puts sends whatever follows it to the display screen. And as with numbers we can add letters and strings together

```
puts 'Hello World!'
puts 'Hello ' + 'World!'
```
returns
```
Hello World!
Hello World!
```

You can also multiply strings
```
puts "hey"
puts "batter " * 3
```
returns
```
hey
batter batter batter
```
note you cannot say 3 * "batter " because that will be like saying 3 "batter " times. You need to say "batter " 3 times or i.e. "batter " + "batter " + "batter "

21 vs. "21"

```
puts 21 + 21
puts "21" + "21"
puts "21 + 21"
```
returns
```
42
2121
21 + 21
```

try with multiplication
```
puts 2 * 5
puts '2' * 5
puts '2 * 5'
```

will return
```
10
22222
2 * 5
```
note that you cannot add a number and a string or multiply 2 strings together.

```
puts '3' + 3
puts '3' * '3'
```
gives you errors. Unlike javascript, ruby wont convert to string on the fly for concatinating strings and numbers with a + operator. and with multiply, the second value must be a number to multiply by. you CAN multiply a string but you CANNOT multiply BY a string even if it is a number in quotes.

## Escaping quotes and back slashes in strings
```
puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'
```
returns
```
You're swell!
backslash at the end of a string:  \\
up\down
up\down
```
