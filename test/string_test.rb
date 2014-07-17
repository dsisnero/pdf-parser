require 'minitest/unit'
require 'test/helper_methods'


class StringTest < MiniTest::Unit::TestCase

  def test_escaped_char
    parse :escaped_string, "\\n", "\n"
    parse :escaped_string, "\\s", " "
    parse :escaped_string, "\\(", "\("
  end

  def test_not_parenthesis
    skip
    parse :not_parenthesis , "d", "d"
    parse :not_parenthesis , "1","1"
  end

  def test_parenthesis
skip
    no_parse :not_parenthesis, "("
    no_parse :not_parenthesis, ")"
  end

  def test_string_body
skip
    parse :string_body , "This is a test", ["This is a test"]
    parse :string_body,  "this is \n a test", ["This is \n a test"]
  end


  def test_string
    parse :string, '(Hello World!)', "Hello World!"
#    parse :string, '(Some \\ escaped \(characters)', "Some \ escaped \(characters"
    parse :string, '(Red (Rouge))', 'Red (Rouge)'

    parse :string, '+12345', 12345
  end

  def test_bad_strings
    skip
    no_parse :string, '1.3'
    no_parse :string, 'this'
    no_parse :string, '2.5'
  end



end
