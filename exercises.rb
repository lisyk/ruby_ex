@array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def one_ex
@array.each do |i|
  puts i
  end
end

def two_ex
@array.each do |i|
  puts "map method #{i}"
  end
end

def tree_ex
  @array.each do |i|
    puts i if i>5
  end
end
