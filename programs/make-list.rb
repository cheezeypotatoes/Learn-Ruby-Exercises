list = []
list_item = 'blank'
puts "Please enter items into your list one at a time. To stop, enter a blank item"

while list_item != ''
  list_item = gets.chomp
  list.push list_item.downcase
end


# puts list.sort
sorted = []
while !list.empty?
  sorted << list.delete(list.min)
end
puts sorted
