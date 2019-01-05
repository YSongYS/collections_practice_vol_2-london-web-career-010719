# your code goes here
def begins_with_r(array)
  yesno = true
  array.each {|element| yesno = yesno && element.start_with?("r")}
  return yesno
end

def contain_a(array)
  new_array = []
  array.each {|element| new_array<<element if element.include? "a" }
  return new_array
end

def first_wa(array)
  find_one = false
  i = 0
  while find_one == false do
    if array[i].instance_of?(String) == false
      find_one = false
    elsif array[i].start_with?("wa") == false
      find_one = false
    else
      find_one = true
    end
    i += 1
  end
  return array[i-1]
end

def remove_non_strings(array)
  new_array = []
  array.each {|element| new_array<<element if element.instance_of?(String)}
  return new_array
end

def count_elements(array)
  new_array = array.map(&:clone)
  new_array.collect {|element| element[:count]=1}

  array.each_with_index {|element,index| new_array[index][:count] = array.count(element)}
  new_array.uniq!
  new_array
end

def merge_data(keys,data)
  keys.each do |person|
    data[0][person[:first_name]].each do |keyss,datas|
      person[keyss] = datas
    end
  end
  keys
end

def find_cool(cool)
  new_array=[]
  cool.each do |element|
    if element[:temperature] == "cool"
      new_array<<element
    end
  end
  new_array
end

def organize_schools(schools)
  organized = Hash.new
  schools.each do |school,location_info|
    if organized.has_key?(location_info[:location])
      organized[location_info[:location]]<<[school]
    else
      organized[location_info[:location]]=[school]
    end
  end
  organized.each {|key,value| value.flatten!}
  organized
end
