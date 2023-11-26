n = gets.chomp.to_i
data = (1..n).map do
  gets.chomp.to_i
end


data.each do |d|
  puts d * 10
end