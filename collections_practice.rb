# your code goes here

def begins_with_r(a)
  
  laTotal = 0
  
  a.each do |x|
    if x.start_with? 'r'
      laTotal +=1
    end
  end
  
  if laTotal == a.size
    return true
  else
    return false
  end
end

def contain_a(a)
  
  newList = []
  
  a.each do |x|
    if x.include? 'a'
      newList << x
    end
  end
  
  return newList

end

def first_wa(a)
  
  newList = []
  
  a.each do |x|
    if x.is_a? Symbol
      newList << x.to_s
    else
      newList << x
    end
  end
  
  newList.each do |x|
    if x.include? 'wa'
      return x
    end
  end
  
end

def remove_non_strings(a)

  a.delete_if do |x|
    x.to_s != x
  end
  
  return a
  
end


def count_elements(a)
  
  newList = []

  a.each do |x|
    x.each do |name,val|
      if newList.find do |xA|
          if xA[:name] == val
            xA[:count] += 1
          end
        end
      else
        newList << {:name => val, :count => 1}
      end
    end
  end
  
  return newList
  
end

def merge_data(listA,listB)
  
  newList = []
  
  listA.each do |itemA|
    itemA.each do |itemB,valB|
      listB.each do |itemAa|
        itemAa.each do |itemBb,valBb|
          if itemBb == itemA[:first_name]
            newList << itemA.merge(valBb)
          end
        end
      end
    end
  end
  
  newList = newList.uniq

  return newList
  
end

def find_cool(a)
  
  newList = []
  
  a.each do |itemA|
    itemA.each do |itemB,valB|
      if valB == 'cool'
        newList << itemA
      end
    end
  end
  
  return newList
  
end

def organize_schools(a)
  
<<<<<<< HEAD
  newList = {"Chicago" => []}
=======
  newList = {}
>>>>>>> f363ff7ccb5552316824078b7164e6ce1f982d4d
  
  a.each do |itemA, valA|
    if newList.has_key? valA[:location]
    else
      newList[valA[:location]] = []
    end
  end
  
  newList.each do |itemA,valA|
<<<<<<< HEAD
    a.each do |itemB,valB|
      if itemA == valB[:location]
        valA << itemB
      end
    end
=======
    
>>>>>>> f363ff7ccb5552316824078b7164e6ce1f982d4d
  end
  
  return newList
  
end