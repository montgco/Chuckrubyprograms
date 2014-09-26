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

  # Instead of using a HereDoc for this, we can store our text directly at the
  # end of the file.  Just another option.  This is something that Sinatra does
  # for very small web applications.
  story = DATA.read
  puts(story % ['Lassie', 'Lassie', my_dog.bark]).inspect
end

__END__
Once upon a time, I had a dog named %s.  She was a good dog.

I guess I could start with my name.  My name is Timmy.

So as I was playing one day, my dog, %s, came to the house and started to bark.

"%s"

My mom said:  "What?  Timmy fell down a well?"
