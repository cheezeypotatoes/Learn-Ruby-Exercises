#write your code here
def ftoc(tempF)
  celsius = ((tempF - 32.0) / 1.8).round
end

def ctof(tempC)
  fahrenheit = (tempC * 1.8 + 32.0).round(2)
end
