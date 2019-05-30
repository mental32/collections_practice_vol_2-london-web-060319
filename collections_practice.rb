let(:cool) {
  [
          {
                 :name => "ashley",
          :temperature => "sort of cool"
      },
          {
                 :name => "blake",
          :temperature => "cool"
      }
  ]
}

let(:schools) {
  {
    "flatiron school bk" => {
      :location => "NYC"
    },
    "flatiron school" => {
      :location => "NYC"
    },
    "dev boot camp" => {
      :location => "SF"
    },
    "dev boot camp chicago" => {
      :location => "Chicago"
    },
    "general assembly" => {
      :location => "NYC"
    },
    "Hack Reactor" => {
      :location => "SF"
    }
  }
}
let(:organized_schools) {
  {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
   "SF"=>["dev boot camp", "Hack Reactor"],
   "Chicago"=>["dev boot camp chicago"]}
}

describe '#begins_with_r' do
  # Question 1

  it 'Return true if every element of the tools array starts with an "r" and false otherwise.' do
    expect(begins_with_r(["ruby", "rspec", "rails"])).to eq(true)
  end

  it "should return false if there's an element that does not begin with r" do
    expect(begins_with_r(["ruby", "rspec", "sails"])).to eq(false)
  end

end

describe '#contain_a' do
  # Question 2

  it "return all elements that contain the letter 'a'" do
    expect(contain_a(["earth", "fire", "wind", "water", "heart"])).to eq(["earth", "water", "heart"])
  end

end

describe '#first_wa' do

  # Question 3

  it "Return the first element that begins with the letters 'wa'" do
    expect(first_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")
  end

end

def remove_non_strings(arr)
  arr.delete_if { |e| e.class != String }
end

def count_elements(arr)
  arr.uniq.collect { |elem| {name: elem['name', count: arr.count elem} }
end

def merge_data(keys, data)
  collection = data.values.reduce({}, :merge)
  Hash[ *collection.keys.map { |k| collection[k].merge {motto: keys.find { |d| d[:first_name] == k }} } ]
end

def find_cool(cool)
  cool.select { |p| p[:temperature] == 'cool' }
end

def organize_schools(schools)
  schools.sort_by { |k, v| v }.reverse
end
