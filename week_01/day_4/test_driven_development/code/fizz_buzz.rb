# Initial solution
def fizz_buzz(number)
  if ((number % 3 == 0) && (number % 5 == 0))
    return 'FizzBuzz'
  end

  if (number % 3 == 0)
    return 'Fizz'
  end

  if (number % 5 == 0)
    return 'Buzz'
  end

  return number.to_s
end

# Refactored solution
def fizz_buzz(number)
  result = ''
  result << 'Fizz' if (number % 3 == 0)
  result << 'Buzz' if (number % 5 == 0)
  result << number.to_s if result.empty?
  return result
end
