class Student
  attr_accessor :first_name, :last_name, :primary_phone_number
  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end
  def favorite_number
    7
  end
end

curt = Student.new
curt.first_name = "Curt"


puts "Curt's favorite number is #{curt.favorite_number}."
