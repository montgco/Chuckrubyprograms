# 3wk_fizz_buzz_inspiration.rb
# Count through 1 to 100. For every number that is a multiple of 3
# print "Fizz". For every number that is a multiple of 5 print "Buzz".
# For every number that is a multiple of both print "FizzBuzz".
# By Chuck Park

# Begin looping through 1 to 100
 (1..100).each do |count|

  case

  when (count % 3  == 0) & (count % 5 == 0) # if multiple of 3 and five print "FizzBuzz"
    puts 'FizzBuzz'

  when count % 3  == 0 # if multiple of 3 print "Fizz"
    puts 'Fizz'

  when count % 5 == 0 # if multiple of 5 print "Buzz"
    puts "Buzz"

  else
      puts count # if not a multiple of 3 or 5 print out number
  end

end
