def check_palindrome(word)
  if word.length <= 1
    return true
  elsif word.length > 1 && word[0] == word[-1]
    return check_anagram(word[1..-2])
  else
    return false
  end
end
