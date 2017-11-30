#write your code here
def echo(word)
   word
end

def shout(word)
   word.upcase
end

def repeat(word, multiplier=2)
  ((word + ' ') * multiplier)[0..-2]
end

def start_of_word(word, index)
  word.slice(0, index)
end

def first_word(string)
  space = string.index(' ')
  string.slice(0, space)
end

def titleize(string)
  array = string.split(' ')
  array.each do |word|
    if word.length <= 3 && word != array[0]
      word.downcase!
    else
      word.capitalize!
    end

  end
  array.join(' ')
end
