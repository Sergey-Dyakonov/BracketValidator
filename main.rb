BRACKETS = %w|( -> ) { } [ ]|
VALIDATION_MAP = { '(' => ')', '{' => '}', '[' => ']' }
input = ""
bracket_array = []

def is_valid_input(inp)
  inp.length == 1 && BRACKETS.include?(inp)
end

puts "Hi!\nEnter bracket to validate or 'exit' to finish"
while input != 'exit'
  print "->"
  input = gets.chomp
  if is_valid_input(input)
    if %w|( { [|.include? input
      bracket_array.push(input)
    elsif input == VALIDATION_MAP[bracket_array.last]
      bracket_array.pop
    else
      if bracket_array.length == 0
        puts "Validation failed! You must open a bracket before its closing!"
      else
        puts "Validation failed! Next bracket should be #{VALIDATION_MAP[bracket_array.last]} but was #{input}"
      end
      break
    end
  else
    puts "You're allowed enter only brackets!"
  end
end
puts "Bye!"