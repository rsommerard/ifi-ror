3.times do
  puts 'times'
end

3.times do |v|
  puts v
end

puts '-' * 80

[1, 2, 3, 4, 5].each do |element|
  puts element
end

puts '-' * 80

i = 0
while i < 4 do
  i+=1
end

puts "i=#{i}"

puts '-' * 80

i = 0
until i > 4 do
  i+=1
end

puts "i=#{i}"

puts '-' * 80
