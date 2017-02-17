#write your code here
def add num1, num2
  num1 + num2
end
def subtract num1, num2
  num1 - num2
end
def sum num_array
  sum = 0
  num_array.each do |num|
    sum = sum + num
  end
  sum
end

def multiply num_array
  answer = 1
  num_array.each do |num|
    answer = answer * num
  end
  answer
end

def power num, exp
  num ** exp
end
def factorial num
  answer = 1
  while num > 1
    answer = answer * num
    num = num - 1
  end
  answer
end
