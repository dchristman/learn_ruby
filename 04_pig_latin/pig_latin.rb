#write your code here
VOWELS = [ 'a', 'e', 'i', 'o', 'u' ]

def translate msg
  msg = msg.split
  msg.map! do |word|
    if (VOWELS.include?(word.slice(0,1)))
      word = word + 'ay'
    else
      word = word.split(//)
      while (VOWELS.include?(word[0]) == false)

        word << word[0]
        if (word[0]=='q')
          word.delete_at(0)
          word << word[0]
        end
        word.delete_at(0)
      end
      word = word.join
      word = word + 'ay'
    end

  end
  msg = msg.join(' ')
end
