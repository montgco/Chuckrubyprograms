# analyzer.rb
#  By Chuck Park
# Text analyzer will provide the following basic statistics from any text file
# it reads in.

#     Character count
#     Character count (excluding spaces)
#     Line count
#     Word count
#     Sentence count
#     Paragraph count
#     Average number of words per sentence
#     Average number of sentences per paragraph

filename = ARGV[0] ? ARGV[0] : "text.txt"

# Open and read lines into a string
def text_file_read(filename)
  text_file = File.open(filename, 'r')
  all_lines_from_file = text_file.read
  text_file.close
  return all_lines_from_file
end
# Count the number of lines in the text file
def count_lines(all_lines_from_file)
  all_lines_from_file.lines.count
end
# Count number of characters with spaces
def count_characters(all_lines_from_file)
  all_lines_from_file.gsub(/\n+/,"").length
end
# Count number of characters without spaces
def count_characters_no_spaces(all_lines_from_file)
  all_lines_from_file.gsub(/\s+/, "").length
end
# Count total number of words in string
def word_count(all_lines_from_file)
  all_lines_from_file.split.length
end
# Count number of sentences in string
def sentence_count(all_lines_from_file)
  all_lines_from_file.split(/\.|\?|\!/).length
end
# Count number of paragraphs in string
def paragraph_count(all_lines_from_file)
  all_lines_from_file.split(/\n\n/).length
end

# Load text file into a string
all_lines_from_file = text_file_read(filename)

# Execute methods to analyze data and store in a hash
analyzed_data = Hash.new
analyzed_data.store("Line Count", count_lines(all_lines_from_file))
analyzed_data.store("Character Count", count_characters(all_lines_from_file))
analyzed_data.store("Character Count No Spaces", count_characters_no_spaces(all_lines_from_file))
analyzed_data.store("Word Count", word_count(all_lines_from_file))
analyzed_data.store("Sentence Count", sentence_count(all_lines_from_file))
analyzed_data.store("Paragraph Count", paragraph_count(all_lines_from_file))
analyzed_data.store("Avg. Word per Sentence", format("%.2f", (analyzed_data.fetch("Word Count").to_f / analyzed_data.fetch("Sentence Count"))))
analyzed_data.store("Avg. Sentences per paragraph", format("%.2f", (analyzed_data.fetch("Sentence Count").to_f / analyzed_data.fetch("Paragraph Count"))))
#  Print analyzed results
puts
puts "***File Analyzed Data***"
analyzed_data.each do |a, b|
  puts " #{a} = #{b}"
end






