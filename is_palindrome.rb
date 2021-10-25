def is_palindrome(word)
  false
end

def test_is_palindrome
  correct = 0
  correct += handle_test(1, "aba", true)
  correct += handle_test(1, "momo", false)
  correct += handle_test(1, "rail at a liar", true)
  correct += handle_test(1, "", false)
  correct += handle_test(1, "Simplébo", true)
  correct += handle_test(1, "Engage le jeu que je le gagne", true)
  total = 6
  puts "Tests: #{correct} / #{total}"
end

def handle_test(number, expression, expected)
  puts "Test #{number} with expression: #{expression}"
  actual = is_palindrome(expression)
  if actual != expected
    puts "x Expected #{expected}, got #{actual}"
  end
  actual == expected ? 1 : 0
end


is_palindrome("grapstor")
test_is_palindrome
