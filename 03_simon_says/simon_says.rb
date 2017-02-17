IGNORES = %w( the of a and over )

def echo msg
  msg
end

def shout msg
  msg.upcase
end

def repeat msg, times=2
  msg = msg + ' '
  (msg * times).strip
end

def start_of_word msg, chars
  msg.slice(0,chars)
end

def first_word msg
  msg = msg.split
  msg[0]
end

def titleize msg


  msg = msg.capitalize
  msg = msg.split
  msg.map! do |toCapitalize|
    if (IGNORES.include?(toCapitalize) == false)
      toCapitalize.capitalize
    else
      toCapitalize
    end
  end
  msg.join (' ')

end
