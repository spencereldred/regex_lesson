# Execute by running:
# ruby read_time_data.rb time_data

# 2014-03-01 08:01:50 -0800

# Fill in regex variable with the regular expression that extracts out the
# date and time data. regex = /[0-9]{4}/ or regex = /\d{4}/

# Extract Year in $1, Month in $2, Day in $3
# Extract Hours in $4, Minute in $5, Seconds in $6, Timezone in $7

def read_time_data

  regex =  /(^\d{4})-(\d{2})-(\d{2})\s/ # 3 out of 7

  matches_count = 0

  while line = gets
    regex.match(line)

    # Match only Year: 6 matches
    if $1 && !$2
      puts "(Year) Year is: " + $1
      matches_count += 1
      score = 1
    end

    # Match (Year && Month) only: 5 matches
    if $1 && $2 && !$3
      puts "(Year && Month) Year is: " + $1 + ", Month is: " + $2
      matches_count += 1
      score = 2
    end

    # Match (Year, Month, Day) only: 1 match
    if $1 && $2 && $3 && !$4
      puts "(Year, Month, Day)"
      puts "Year is: " + $1 + ", Month is: " + $2 + ", Day is: " + $3
      matches_count += 1
      score = 3
    end

    # Match (Year, Month, Day, Hours) only: 1 match
    if $1 && $2 && $3 && $4 && !$5
      puts "(Year, Month, Day, Hours)"
      puts "Year is: " + $1 + ", Month is: " + $2 + ", Day is: " + $3 +
            ", Hours: " + $4
      matches_count += 1
      score = 4
    end

    # Match (Year, Month, Day, Hours, Minutes) only: 1 match
    if $1 && $2 && $3 && $4 && $5 && !$6
      puts "(Year, Month, Day, Hours, Minutes) "
      puts  "Year is: " + $1 + ", Month is: " + $2 + ", Day is: " + $3 +
            ", Hours: " + $4 + ", Minutes: " + $5
      matches_count += 1
      score = 5
    end

    # Match (Year, Month, Day, Hours, Minutes) only: 1 match
    if $1 && $2 && $3 && $4 && $5 && $6 && !$7
      puts "(Year, Month, Day, Hours, Minutes, Seconds)"
      puts  "Year is: " + $1 + ", Month is: " + $2 + ", Day is: " + $3 +
            ", Hours: " + $4 + ", Minutes: " + $5 + ", Seconds: " + $6
      matches_count += 1
      score = 6
    end

    # Match (Year, Month, Day, Hours, Minutes) only: 1 match
    if $1 && $2 && $3 && $4 && $5 && $6 && $7
      puts "(Year, Month, Day, Hours, Minutes, Seconds, Timezone)"
      puts  "Year is: " + $1 + ", Month is: " + $2 + ", Day is: " + $3 +
            ", Hours: " + $4 + ", Minutes: " + $5 + ", Seconds: " + $6 +
            ", Timezone is Zulu + " + $7
      matches_count += 1
      score = 7
    end

    # /(\d+)-(\d+)-(\d+)/.match(line)
    # /([0-9][0-9][0-9][0-9])-([0-9][0-9])-([0-9][0-9])/.match(line)
  end

  puts "The number of matches is: #{matches_count}"

  puts "Your score is: #{score} out of a possible 7."

end

read_time_data

# puts "The number of matches is: #{matches_count}"

# puts "Your score is: #{score} out of a possible 7."







