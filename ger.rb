katz_deli = ["apple", "banana", "triangle"]

def line(katz_deli)
  if katz_deli.length == 0 
    puts "The line is currently empty."
  else
    str = "The line is currently:"
    katz_deli.each_with_index { |name, index|  str << " #{index + 1 }. #{name.capitalize}"}
    puts str
  end
end

def take_a_number(katz_deli, name = gets.chomp)
  katz_deli << name
  puts "Welcome, #{name.capitalize}. You are number #{ katz_deli.index(name) + 1 } in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  else 
  puts "Currently serving #{ katz_deli[0] }."
  katz_deli.shift
  print katz_deli
  end
end

#puts "Hi, what is your name?"
#name = gets.chomp
#take_a_number(katz_deli, name)