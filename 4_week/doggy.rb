

class Dog

  def initialize(name)
    @name = name
  end

  def bark()
    puts "#{@name} says Rrrrruff, ruff!"
  end

  def eat()
    puts "Grrrrrrrrrr, stay away from my food!"
  end

  def chase_cat
    puts "Run, run, run! Meeeeeooooooow! Chomp! Gulp! Yum!"
  end

end

class Doggy < Dog
@@tricks = Array.new

  def teach_trick(type_of_trick)
    if @@tricks.include?(type_of_trick)
      puts "#{@name} already knows how to #{type_of_trick}!"
    else
       puts "Good job, #{@name} now knows how to #{type_of_trick}!"
      @@tricks << type_of_trick
      def Doggy.type_of_trick
         puts "Look at #{@name} dance!"
      end
    end
  end


  def do_trick(type_of_trick)
    if @@tricks.include?(type_of_trick)
      puts "Look at #{@name} #{type_of_trick}!"
    else
       puts "Sorry, you need to teach #{@name} how to #{type_of_trick} first!"
    end

  end


end

brooke = Doggy.new "Brooke"
brooke.bark
brooke.eat
brooke.chase_cat
brooke.teach_trick(:dance)
brooke.dance
