
def largest_palindrome_product()
  # largest palindrom from 2 3 digit numbers

  #because you want largest start at higher nubmers and work your way down
  j = 999
  i = 999
  largest = 0
  while j > 99 do
    while i > 99 do
      if(i * j > largest)
        if(is_palindrome?((i * j).to_s.split(//)))
          largest = (i*j)
        end
      end
      i -= 1
    end
    i = 999
    j -= 1
  end
  return largest
end

def is_palindrome?(numberArray)
  if(numberArray.length == 1)
    return true
  elsif(numberArray.length == 2)
    if(numberArray[0] == numberArray[1])
      return true
    else
      return false
    end
  elsif(numberArray[0] != numberArray[-1])
    return false
  end

  return is_palindrome?(numberArray[1..-2])
end

# def is_palindrome?(numberArray)
#   mid = numberArray.length / 2;
#   if(numberArray[0..mid] == (numberArray.reverse)[0..mid])
#     return true
#   end
#
#   return false
# end
