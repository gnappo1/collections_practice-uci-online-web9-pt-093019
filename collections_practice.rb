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
  final_array = []
  array.each do |string| 
    string[2] = "$"
    final_array << string
  end
  final_array
end

def find_a(array)
  final_array = []
  #alternative A
  array.each {|el| final_array << el if el.match(/^a/)}
  final_array
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