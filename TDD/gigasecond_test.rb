require 'minitest/autorun'
require 'date'
require 'time'
require_relative 'gigasecond'

class GigasecondTest < MiniTest::Test

  def test_1
    skip
    gs = Gigasecond.from(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs
  end

  def test_2
    skip
    gs = Gigasecond.from(Date.new(1977, 6, 13))
    assert_equal Date.new(2009, 2, 19), gs
  end

  def test_3
    skip
    gs = Gigasecond.from(Date.new(1959, 7, 19))
    assert_equal Date.new(1991, 3, 27), gs
  end

  def test_yourself
    skip
    your_birthday = Date.new(1999, 12, 25)
    gs = Gigasecond.from(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs
  end

end
