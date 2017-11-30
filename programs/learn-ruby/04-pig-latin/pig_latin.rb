#write your code here
def translate(string)
  firstLetter = string[0]
  vowels = ['a', 'e', 'i', 'o', 'u']

  if string.index(' ') != nil
    phrase = string.split(' ')
    i = 0
    translated = []
    while i < phrase.length
      translated.push(translate(phrase[i]))
      i = i + 1
    end
    translated.join(' ')

  else
    if vowels.index(firstLetter) != nil
      string + 'ay'

    else
      if vowels.index(string[0]) == nil && vowels.index(string[1]) == nil && vowels.index(string[2]) == nil && string.index('qu') == nil
        string[3, string.length - 1] + string[0, 3] + 'ay'

      else
        if vowels.index(string[0]) == nil && vowels.index(string[1]) == nil && string.index('qu') == nil
          string[2, string.length - 1] + string[0, 2] + 'ay'

        else
          if string[0, 2] == 'qu'
            string[2, string.length - 1] + string[0, 2] + 'ay'

          else
            if string[1, 2] == 'qu' && vowels.index(string[0]) == nil
              string[3, string.length - 1] + string[0, 3] + 'ay'

            else
              string.slice(1..string.length - 1) + string[0] + 'ay'
            end
          end
        end
      end
    end
  end
end
