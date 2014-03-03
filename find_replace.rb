# Execute by running:
# ruby find_replace.rb find_replace_data
#
# Find and replace the following in the find_replace_data file:
#   find "Whoever", replace with "Hiring Manager"
#   find "Feb 28, 2014", replace with "Mar 4, 2014"
#   find "XYZ" position, replace with "web developer" position
#   find "who know what company", replace with "your company" (or anything of your choice)
#   find "Yours Truly", replace with your name

# Executes file read and .match(line)
while line = gets
  line = line.sub()#   find "Whoever", replace with "Hiring Manager"
  line = line.sub()#   find "Feb 28, 2014", replace with "Mar 4, 2014"
  line = line.sub()#   find "XYZ" position, replace with "web developer" position
  line = line.sub()#   find "who knows what company", replace with "your company" (or anything of your choice)
  line = line.sub()#   find "Yours Truly", replace with your name
  puts line
end
