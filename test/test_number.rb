require_relative 'test_helper'


class NumberTest < MiniTest::Test


  def test_integer
    parse :integer, '1234', s(:integer, 1234)
    parse :integer, '-123', s(:integer, -123)
    parse :integer, '+12345', s(:integer, 12345)
    parse :integer, '0', s(:integer, 0)
    parse :integer, '1289382993', s(:integer, 1289382993)
  end

  def test_bad_integers
    no_parse :integer, '1.3'
    no_parse :integer, 'this'
    no_parse :integer, '2.5'
    no_parse :integer, 'x234'
  end


  def test_real_number
    parse :float, '1.2', s(:float,1.2)
    parse :float, '0.0', s(:float,0.0)
    parse :float, '.0' , s(:float,0.0)
    parse :float, '-0.004', s(:float,-0.004)
    parse :float, '65.4', s(:float,65.4)
  end

  def test_bad_float
    no_parse :float, 'x22'
  end





end
