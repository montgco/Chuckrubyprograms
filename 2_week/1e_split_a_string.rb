#Core Ruby 55th batch
# Split string Exercise
# By Chuck Park


s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

def split_string(in_string)

  parsed_string = in_string.split("\n")

  #build line for output
  parsed_string.each_with_index do |parsed_line, line_count|
      yield(parsed_line, line_count)
  end

end

split_string(s) { |parsed_line, line_count|  puts "Line #{line_count + 1} : #{parsed_line} " }


