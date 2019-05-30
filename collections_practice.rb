def organize_schools(schools)
  Hash[ *schools.values.values.uniq.map { |k| [k, [schools.select { |n, v| v[:location] == k } ] ] }.flatten(1) ]
end

def begins_with_r(arr)
  arr.all? { |e| e[0] == 'r' }
end

def contain_a(arr)
  arr.select { |e| e.include? 'a' }
end

def first_wa(arr)
  arr.find { |e| e.class == String && e.start_with?('wa') }
end

def remove_non_strings(arr)
  arr.delete_if { |e| e.class != String }
end

def count_elements(arr)
  arr.uniq.collect { |elem| {name: elem[:name], count: arr.count(elem)} }
end

def merge_data(keys, data)
  collection = Hash[*data]
  collection.keys
  # Hash[ *collection.keys.map { |k| collection[k].merge Hash[:motto, keys.find { |d| d[:first_name] == k }] } ]
end

def find_cool(cool)
  cool.select { |p| p[:temperature] == 'cool' }
end
