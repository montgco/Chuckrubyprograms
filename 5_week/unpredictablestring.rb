# unpredictablestring.rb
#  By Chuck Park
=begin Take a string and scramble it up by rearranging all the letters
in it randomly. Place the method in a new class that is a sub-class of
String
=end

class UnpredictableString < String #New class

  def scramble(target_str)              # Scramble the string
    target_str = target_str.split(//)   #  Put string in array by character and keep spaces
    target_str.shuffle!                      # Shuffle the characters in the array
    target_str.join                            # Convert back to string
  end

end

target_str = 'It was a dark and stormy night.'
ScrambledString = UnpredictableString.new
puts ScrambledString.scramble(target_str)
