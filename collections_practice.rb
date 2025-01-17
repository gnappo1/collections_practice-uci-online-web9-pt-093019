require 'pry'
require 'benchmark'
require 'benchmark/memory' #you'll have to also run in the terminal: gem install benchmark-memory

def sort_array_asc(array)
  array.sort { |a, b| a <=> b }
end 

def sort_array_desc(array)
  array.sort {|a, b| b <=> a}
end 

def sort_array_char_count(array)
  array.sort {|a, b| a.length <=> b.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end 

def kesha_maker(array)
  #Version 1: Each
  # final_array = []
  # array.each do |string| 
  #   string[2] = "$"
  #   final_array << string
  # end
  # final_array
  
  #Version 2: Collect
  array.collect do |string| 
    string[2] = "$"
    string
  end
end

def find_a(array)
  final_array = []
  
  #alternative A: start_with?
  array.each {|el| final_array << el if el.start_with?('a')}
  
  #alternative B: match & Regex
  #array.each {|el| final_array << el if el.match(/^a/)}
  
  final_array
end 

def sum_array(array)
  #Version A: each
  total = 0
  array.each {|element| total += element}
  total
  
  #Version B: inject/reduce without shortcut
  #array.reduce(0) {|total, element| total += element}
  #array.inject(0) {|total, element| total += element}
  
  #Version C: inject/reduce with shortcut
  # array.reduce(0, :+)
  # array.inject(0, :+)
end

def add_s(array)
  #Version 1: Each
  # final_array = []
  # array.each do |element| 
  #   element == array[1] ? final_array << element : final_array << "#{element}s"
  # end
  # final_array
  
  #Version 2: Collect
  array.collect do |element| 
    element == array[1] ? element : "#{element}s"
  end
end

#EXTRA PRACTICE -> Dynamically accept the start and end point to swap
# def swap_elements_with_flag(array, start_point, end_point)
#   t = array[start_point]
#   array[start_point] = array[end_point]
#   array[end_point] = t
#   array
# end

# def swap_elements_from_to(array, start_point, end_point)
#   array[start_point], array[end_point] = array[end_point], array[start_point]
#   array
# end

#binding.pry
# Benchmark.bmbm do |x|
#   x.report("Inline Version") {10_000.times{swap_elements_from_to([3, 5, false, "doodle"], 1, 3)}}
#   x.report("Flag Version") {10_000.times{swap_elements_with_flag([3, 5, false, "doodle"], 1, 3)}}
# end

# Benchmark.memory do |x|
#   x.report("Inline Version") {10_000.times{swap_elements_from_to([3, 5, false, "doodle"], 1, 3)}}
#   x.report("Flag Version") {10_000.times{swap_elements_with_flag([3, 5, false, "doodle"], 1, 3)}}
#   x.compare!
# end