#Convert Fahrenheit to Celsius
# Chuck Park - Ruby Core Class

def celcius_calculation(fahrenheit_input) #Celcius calculation
  ((fahrenheit_input.to_f - 32) * 5) / 9
end

# Retrieve Fahrenheit input
print "Enter in degrees of Fahrenheit: "
fahrenheit_input = gets.chomp.to_f

# Display results of calculation
puts "#{fahrenheit_input} degrees in Fahrenheit equals"
puts "#{format("%.2f",celcius_calculation(fahrenheit_input))} degrees in Celsius."