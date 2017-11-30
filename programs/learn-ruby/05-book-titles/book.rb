class Book
  # this is the 'setter' it is setting an instance variable to a value
  def title=(value)
    @title = value
  end

  # this is the 'getter' it gets the value of the instance variable that has been set and we do whatever we need to do with it.
  def title
    neverCap = ['a', 'the', 'and', 'an', 'in', 'of', 'on']
    if @title.index(' ') != nil
      @title = @title.split(' ')
      @title.each do |word|
        if neverCap.index(word) != nil && word != @title[0]
          word.downcase!
        else
          word.capitalize!
        end
      end
       @title.join(' ')
    else
      @title.capitalize
    end
  end
end

# book = Book.new
# book.title=('inferno')
# puts book.title
# book.title=('war and peace')
# puts book.title
