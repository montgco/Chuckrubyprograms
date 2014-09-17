class Fixnum
  def is_evenly_divisible_by?(number)
     (self % number).zero?
  end
end

def fizz_buzz(number)
  result = ''
  if number.is_evenly_divisible_by?(3)
    result << 'Fizz'
  end
  if number.is_evenly_divisible_by?(5)
    result << "Buzz"
  end
  result.empty? ? number : result
end

if __FILE__ == $0
  (1..100).each do |number|
    puts fizz_buzz(number)
  end
end
