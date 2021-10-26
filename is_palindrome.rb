def is_palindrome(word)
  expression = format_word(word)
  api(expression)
end

def naive(word)
  word.split('').take(word.length / 2).each_with_index do |letter, i|
    return false unless letter == word[word.length - 1 - i]
  end
  true
end

def api(word)
  word.split('').reverse.join == word
end

def format_word(word)
  expression = without_space(word)
  expression = expression.downcase
  expression = without_accent(expression)
  expression = without_punctuation(expression)
  expression
end

def without_space(word)
  word.delete(' ')
end

def without_accent(word)
  require "i18n"
  I18n.available_locales = [:en]
  I18n.transliterate(word)
end

def without_punctuation(word)
  word.gsub(/[[:punct:]]/, '')
end

@correct = 0
@count = 0
def test_is_palindrome
  handle_test("aba", true)
  handle_test("momo", false)
  handle_test("rail at a liar", true)
  handle_test("", true)
  handle_test("Simplébo", false)
  handle_test("Engage le jeu que je le gagne", true)
  handle_test("Tâte l'État", true)
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
