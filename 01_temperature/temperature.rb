#write your code here
def ftoc temperature
  temperature = (temperature.to_f - 32) * 5/9
end

def ctof temperature
  temperature = temperature.to_f * 9/5 + 32
end
