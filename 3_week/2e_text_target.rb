# Read File to EOF. When a line is found with the word "word" in it then
# insert the word "inserted" in front of "word" and update file with new data
# By Chuck Park - Ruby Core Batch 55
# 3wk_2e_text_target.rb

print 'Enter file name: '
my_file_name = gets.chomp
found = File.exist? my_file_name

# Scan the text file for the line that contains the word "word" and rewrite
# file
if found

  textfile = File.open(my_file_name, 'r+')   # open file for read/write

  all_lines_from_file = textfile.read # read all the records in the file

  if word_position = all_lines_from_file =~ /word/  # check for "word" and if
    # found note position in string
    all_lines_from_file.insert(word_position, 'inserted ') # put "inserted " in
    # front of "word"
    textfile.rewind # reset to beginning of file
    textfile.puts all_lines_from_file # write new data to file
  end
  textfile.close
else
  puts 'File not found to process!'
end
