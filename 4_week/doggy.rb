class Dog
  def initialize(name)
    @name = name
  end

  # doctest: I get a name and the dog barks
  # >> my_dog = Dog.new('Lassie')
  # >> my_dog.bark
  # => 'Lassie says Rrrrruff, ruff!'
  def bark
    "#{@name} says Rrrrruff, ruff!"
  end

  def eat
    'Grrrrrrrrrr, stay away from my food!'
  end

  def chase_cat
    'Run, run, run! Meeeeeooooooow! Chomp! Gulp! Yum!'
  end
end

# Application guard.  If this file is the file ran directly, run this block of
# code
if __FILE__ == $PROGRAM_NAME
  my_dog = Dog.new('Lassie')

  # The syntax is HereDoc if you want to search it.  It is usable (similar) in
  # Bash, and other languages besides Ruby
  story = <<-THE_END
Once upon a time, I had a dog named %s.  She was a good dog.

I guess I could start with my name.  My name is Timmy.

So as I was playing one day, my dog, %s, came to the house and started to bark.

"%s"

My mom said:  "What?  Timmy fell down a well?"

  THE_END

  puts(story % ['Lassie', 'Lassie', my_dog.bark]).inspect
end
