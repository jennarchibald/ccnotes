require('minitest/autorun')
require('minitest/rg')
require_relative('../fizz_buzz')

class FizzBuzzTest < MiniTest::Test
  def test_fizz_buzz__3_returns_fizz()
    actual = fizz_buzz(3)
    expected = 'Fizz'
    assert_equal(expected, actual)
  end

  def test_fizz_buzz__5_returns_buzz()
    actual = fizz_buzz(5)
    expected = 'Buzz'
    assert_equal(expected, actual)
  end

  def test_fizz_buzz__15_returns_fizzbuzz()
    actual = fizz_buzz(15)
    expected = 'FizzBuzz'
    assert_equal(expected, actual)
  end

  def test_fizz_buzz__2_returns_2()
    actual = fizz_buzz(2)
    expected = '2'
    assert_equal(expected, actual)
  end
end
