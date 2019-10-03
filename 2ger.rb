katz_deli = ["apple", "banana", "triangle", "pie", "love"]

def line(katz_deli)
  str = ""
  if katz_deli.length == 0 
  puts "The line is currently empty."
  else 
  str = "The line is currently:" 
  katz_deli.each_with_index {|name, index| str << " #{index + 1}. #{name}"}
  puts str
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1 } in line."
end

def now_serving(katz_deli)
  puts "Currently serving #{katz_deli[0]}."
  katz_deli.shift
end

line(katz_deli)
sleep 2 
puts "Hello, what is your name?"
name = gets.chomp
take_a_number(katz_deli, name)
sleep 2 
now_serving(katz_deli)
sleep 2 
line(katz_deli)