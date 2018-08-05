def begins_with_r(array)
  array.all? do |el|
    el.start_with?("r")
  end
end

def contain_a(array)
  array.find_all do |el|
    el.include?("a")
  end
end

def first_wa(array)
  array.find do |el|
    el.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |el|
    el.class != String
  end
end

def count_elements(array)
  names = array.uniq
  names.map do |name|
    name.merge(:count => array.count{|el| el[:name] == name[:name]})
  end
end

def merge_data(keys, data)
  keys.map do |name|
    name.merge(data[0][name[:first_name]].to_h)
  end
end

def find_cool(array)
  array.find_all do |el|
    el[:temperature] == "cool"
  end
end

def organize_schools(schools)
  hash = {}
  schools.each do |school,location|
    if hash.include?(location[:location])
      hash[location[:location]] << school
    else
      hash[location[:location]] = [school]
    end
  end
  hash
end
