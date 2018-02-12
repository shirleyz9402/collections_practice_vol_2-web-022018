def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.find_all {|element| element.include? "a"}
end 

def first_wa(array)
  array.find {|element| element.to_s.start_with?("wa")}
end 

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String 
  end 
end 

def count_elements(array)
names = array.uniq
  names.map do |name|
    name.merge(:count => array.count { |element| element[ :name] == name[:name]})
  end 
end 

def merge_data(keys,data)
  keys.map do |name|
    name.merge(data[0][name[:first_name]].to_h)
  end 
end 

def find_cool(array)
  array.find_all{ |element| element[:temperature] == "cool"}
end 

def organize_schools(array)

end 