# require './data.rb'
require 'open3'

Dir.glob('data/input_*.txt') do |input_filename|
  puts "[input_filename: #{input_filename}]"
  output_filename = input_filename.sub('data/input_', 'data/output_')
  expected_filename = input_filename.sub('data/input_', 'data/expected_')
    
  pp "ruby main.rb < #{input_filename} > #{output_filename}"
  `ruby main.rb < #{input_filename} > #{output_filename}`


  if File.exist?(expected_filename)
    pp "diff -u #{expected_filename} #{output_filename}"
    puts `diff -u #{expected_filename} #{output_filename}`
  else
    pp "cat #{output_filename}"
    puts `cat #{output_filename}`
  end

  puts
end


