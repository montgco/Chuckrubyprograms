# Exercise 3e - Determine age in years when provided seconds
# Chuck Park - Ruby Core Class
#

SEC_IN_YEAR = 31536000 #number of seconds in a year

# Calculate seconds into years and convert string to float
def determine_age_years(age_in_seconds)

  age_in_years = age_in_seconds.to_f / SEC_IN_YEAR

end

# Determine number of years and print out number of years with appropriate message
def print_age_in_years(age_in_years)

  format("%.2f", age_in_years)

  if age_in_years < 30 #could probably use a CASE statement for this

    puts "Your age in years:  #{age_in_years}"
    puts "You are just a young pup!"

  elsif age_in_years > 30 and age_in_years < 55

    puts "Your age in years:  #{age_in_years}"
    puts "In the prime of your life!"

  elsif age_in_years > 55 and age_in_years < 100

    puts "Your age in years:  #{age_in_years}"
    puts "Lucky you! Time to enjoy the Golden Years!"

  else

    puts "Your age in years:  #{age_in_years}"
    puts "Wow...what is your secret!"

  end

end

# Begin collection of seconds
print "Enter in number of seconds: "

age_in_seconds = gets.chomp #Normally I would want to validate the input is
              # only an integer

age_in_years = determine_age_years(age_in_seconds)

print_age_in_years(age_in_years)


