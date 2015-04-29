@array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@h = {a:1, b:2, c:3, d:4}

def one_ex
@array.each {|num| puts num}
end

def two_ex
  @array.each {|num| puts num if num > 5}
end

def tree_ex
  @array.select {|num| num%2==0  }
end

def four_ex
  @array<<11
  @array.unshift(0)
end

def five_ex
  @array.pop
  @array<<3
end

def six_ex
  @array.uniq
end

def seven_ex
  puts "the difference is the hash has a key asociated to an value"
end

def eight_ex
  hash1 = {:first_key => 'first_value'}
  hash2 = {first_key: 'first_value'}
end

def nine_ex
  puts @h[:b]
  @h[:e] = 5
  @h.delete_if {|key, val| val<3.5}
end

def twelve_ex
  contacts["Joe Smith"][:email] = contact_data[0][0]
  contacts["Joe Smith"][:address] = contact_data[0][1]
  contacts["Joe Smith"][:phone] = contact_data[0][2]
  contacts["Sally Johnson"][:email] = contact_data[1][0]
  contacts["Sally Johnson"][:address] = contact_data[1][1]
  contacts["Sally Johnson"][:phone] = contact_data[1][2]
end

def thirteen_ex
  puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
  puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
end

def fourteen_ex
  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}
  fields = [:email, :address, :phone]

  contacts.each do |name, hash|
    fields.each do |field|
      hash[field] = contact_data.shift
    end
  end
end

def fifteen
  arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
  arr.delete_if {|s| s.start_with?('s', 'w')}
end

def sixteen
  a = ['white snow', 'winter wonderland', 'melting ice',
    'slippery sidewalk', 'salted roads', 'white trees']
  new_a =[]
  a.map do |i|
    new_a<<i.split
    new_a.flatten
  end
end
