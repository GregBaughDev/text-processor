puts "-" * 58
puts "-" * 22 + "Text Processor" + "-" * 22
puts "-" * 58
puts "Please choose a function:"
puts "1. Word count"
puts "2. Find and replace"
puts "3. Quit"

choice = gets
choice = choice.chomp 
choice = choice.to_i

if choice == 1 
    puts "Please enter the name of the .txt file you want to process"
    file_name = gets 
    search_file = file_name.chomp + ".txt"

    lines = []
    words = []
    total = 0

    File.open(search_file) do | input_file |
        lines = input_file.readlines
    end

    lines.each do | line |
        words = line.split(" ")
        total += words.length
    end

    puts "#{search_file} contains #{total} words"
end

