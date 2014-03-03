date = "2014-03-01 08:01:50 -0800"
puts date

months = %w{Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec}
p months

date.match(/(^\d{4})-(\d{2})-(\d{2})\s/)
puts $1
puts $2
puts $3

if $2 == "03"
  puts months[3]
end

index = $2.to_i - 1
puts index

puts "#{months[index]} #{$3}, #{$1}"

