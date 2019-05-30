# let(:schools) {
#   {
#     "flatiron school bk" => {
#       :location => "NYC"
#     },
#     "flatiron school" => {
#       :location => "NYC"
#     },
#     "dev boot camp" => {
#       :location => "SF"
#     },
#     "dev boot camp chicago" => {
#       :location => "Chicago"
#     },
#     "general assembly" => {
#       :location => "NYC"
#     },
#     "Hack Reactor" => {
#       :location => "SF"
#     }
#   }
# }
# let(:organized_schools) {
#   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#   "SF"=>["dev boot camp", "Hack Reactor"],
#   "Chicago"=>["dev boot camp chicago"]}
# }

def organize_schools(schools)
  collection= schools.values.map { |k| k[:location] }.uniq
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
  collection.keys.map { |k| collection[k].merge keys.find { |d| d[:first_name] == k } }
end

def find_cool(cool)
  cool.select { |p| p[:temperature] == 'cool' }
end
