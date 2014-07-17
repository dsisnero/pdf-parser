require 'minitest/unit'
require 'test/helper_methods'


class NumberTest < MiniTest::Unit::TestCase

  def test_integer
    parse :integer, '1234', 1234
    parse :integer, '-123', -123
    parse :integer, '+12345', 12345
  end

  def test_bad_integers
    no_parse :integer, '1.3'
    no_parse :integer, 'this'
    no_parse :integer, '2.5'
  end


  def test_real_number
    parse :float, '1.2', 1.2
    parse :float, '0.0', 0.0
    parse :float, '.0' , 0.0
    parse :float, '-0.004', -0.004
    parse :float, '65.4', 65.4
  end





end
