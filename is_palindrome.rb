def is_palindrome(word)
  false
end

def test_is_palindrome
  correct = 0
  correct += 1 if test1
  correct += 1 if test2
  correct += 1 if test3
  correct += 1 if test4
  correct += 1 if test5
  correct += 1 if test6
  correct += 1 if test7
  total = 7
  puts "Tests: #{correct} / #{total}"
end

def test1
  is_palindrome("aba") == true
end

def test2
  is_palindrome("momo") == false
end

def test3
  is_palindrome("rail at a liar") == true
end

def test4
  is_palindrome("") == true
end

def test5
  is_palindrome("Simplébo") == false
end

def test6
  is_palindrome("Engage le jeu que je le gagne") == true
end

def test7
  is_palindrome("Engage le jeu que je le gagne") == true
end

is_palindrome("grapstor")
test_is_palindrome
