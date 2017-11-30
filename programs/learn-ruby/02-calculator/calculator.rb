#write your code here
def add(num1,num2)
  sum = num1 + num2
end

def subtract(num1,num2)
  differnece = num1 - num2
end

def sum(array)
  sum = 0
  if array.empty?
    sum = 0
  else
    while !array.empty?
      num = array.pop
      sum = sum + num
    end
    sum
  end
end

def multiply(array)
  product = 1
  while !array.empty?
    num = array.pop
    product = product * num
  end
  product
end

def power(num1,num2)
  exp = num1 ** num2
end

def factorial(num)
  factored = 1
  if num <= 1
    factored = 1
  else
    while num > 1
      factored = factored * num
      num = num - 1
    end
     factored
  end
end
