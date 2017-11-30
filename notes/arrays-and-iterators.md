# Arrays and Iterators

## Arrays

sample Arrays
```
[]
[5]
['Hello', 'Goodbye']

flavor = 'vanilla'             # This is not an array, of course...
[89.9, flavor, [true, false]]  # ...but this is.
```

Addressing Arrays, arrays are zero indexed meaning they begin at 0 not 1
```
names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]  # This is out of range. (gives no error just nothing there)
```
```
Ada
Belle
Chris
Ada
Belle
Chris
```

## The Method each
```
languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

I love English!
Don't you?
I love German!
Don't you?
I love Ruby!
Don't you?
And let's hear it for C++!
...
```
the method each is considered an *iterator*
One thing to notice about iterators is that they are always followed by *do...end*. *while* and *if* never had a *do* near them; we only use *do* with iterators.

example of a numeric iterators
```
3.times do
  puts 'Hip-Hip-Hooray!'
end
```
```
Hip-Hip-Hooray!
Hip-Hip-Hooray!
Hip-Hip-Hooray!
```

example of join

```
foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'
```
```
artichoke
brioche
caramel

["artichoke", "brioche", "caramel"]

artichoke, brioche, caramel

artichoke  :)  brioche  :)  caramel  8)
```


push, pop and last

push adds to the end of the array, pop removes the last item in the array and returns it. last will just return the last item in the array but leave the array alone. pop and push change the actual array.

```
favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
```
```
raindrops on roses
whiskey on kittens
2
whiskey on kittens
raindrops on roses
1
```
