def is_palindrome(word)
  false
end

@correct = 0
@count = 0
def test_is_palindrome
  handle_test("aba", true)
  handle_test("momo", false)
  handle_test("rail at a liar", true)
  handle_test("", false)
  handle_test("Simplébo", true)
  handle_test("Engage le jeu que je le gagne", true)
  puts "Tests: #{@correct} / #{@count}"
end

def handle_test(expression, expected)
  @count += 1
  puts "Test #{@count} with expression: '#{expression}'"
  actual = is_palindrome(expression)
  if actual != expected
    puts "x Expected #{expected}, got #{actual}"
  else
    @correct += 1
  end
end

test_is_palindrome
