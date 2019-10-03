katz_deli = ["Ada", "Grace", "Kent"]

def line(katz_deli)
  if katz_deli == 0
    puts " The line is currently empty."
  else
     str = "The line is currently: "
     
    katz_deli.each_with_index do |name, index|
     str << "#{index + 1}. #{name}. "
    end
    puts str
  end
  return 
end

puts line(katz_deli)

def take_a_number(katz_deli, name) 
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1 } in line."
end
puts "Hello, what is your name?"
take_a_number(katz_deli, gets.chomp)
take_a_number(katz_deli, "Gerald")
take_a_number(katz_deli, "Randel")

def now_serving(katz_deli)
  if katz_deli == []
    puts " There is nobody waiting to be served!"
  else 
  puts "Currently serving #{katz_deli[0]}."
  katz_deli.shift
end
end

now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)

