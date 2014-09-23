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
  textfile = File.open(filename, 'r')
  alllinesfromfile = textfile.read
end
# Count the number of lines in the text file
def count_lines(alllinesfromfile)
  line_count = alllinesfromfile.lines.count
end
# Count number of characters with spaces
def count_characters(alllinesfromfile)
  char_count = alllinesfromfile.gsub(/\n+/,"")
  char_count.length
 end
# Count number of characters without spaces
def count_characters_no_spaces(alllinesfromfile)
  char_count  = alllinesfromfile.gsub(/\s+/, "")
  char_count.length
end
# Count total number of words in string
def word_count(alllinesfromfile)
  wordcount = alllinesfromfile.split.length
end
# Count number of sentences in string
def sentence_count(alllinesfromfile)
  sentencecount = alllinesfromfile.split(/\.|\?|\!/).length
  # sentencecount.count
end
# Count number of paragraphs in string
def paragraph_count(alllinesfromfile)
  paragraphcount = alllinesfromfile.split(/\n\n/).length
end

# Load text file into a string
alllinesfromfile = text_file_read(filename)

# Execute methods to analyze data and store in a hash
analyzeddata = Hash.new
analyzeddata.store("Line Count", count_lines(alllinesfromfile))
analyzeddata.store("Character Count", count_characters(alllinesfromfile))
analyzeddata.store("Character Count No Spaces", count_characters_no_spaces(alllinesfromfile))
analyzeddata.store("Word Count", word_count(alllinesfromfile))
analyzeddata.store("Sentence Count", sentence_count(alllinesfromfile))
analyzeddata.store("Paragraph Count", paragraph_count(alllinesfromfile))
analyzeddata.store("Avg. Word per Sentence", (analyzeddata.fetch("Word Count") / analyzeddata.fetch("Sentence Count")))
analyzeddata.store("Avg. Sentences per paragraph", (analyzeddata.fetch("Sentence Count") / analyzeddata.fetch("Paragraph Count")))

#  Print analyzed results
puts
puts "***File Analyzed Data***"
analyzeddata.each do |a, b|
  puts " #{a} = #{b}"
end






