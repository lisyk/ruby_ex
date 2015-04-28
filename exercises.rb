@array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def one_ex
@array.each {|num| puts num}
end

def two_ex
  @array.each {|num| puts num if num > 5}
end

def tree_ex
  @array.select {|num| num%2==0  }
end
