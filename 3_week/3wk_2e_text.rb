# Build a file with the word "text" in each line five times
#and with five records
# In the third record replace the third "text" with the word "word"
# By Chuck Park - Ruby Core Batch 55
# 3wk_2e_text.rb

# Create text file and output five lines method
def text_file_build

 text_line_ary = "text " * 5 # Line with five words of text in it
 text_line2_ary = %w(text text word text text) # Line with "word" added

  textfile = File.open('MultipleText', 'w') # create text file

# Loop five times outputting a line each time. On third line output line with "word"
# in it.
  for line_count in 1..5
    if line_count != 3 #Not line three then normal line of five "text"
      text_line_output = text_line_ary
    else # Line 3 with "word" in it, put space between words
      text_line_output = text_line2_ary.join(" ")
    end
    textfile.puts text_line_output # output to file
    end
  textfile.close
end

# Execute method
text_file_build

