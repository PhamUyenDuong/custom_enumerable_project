module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    # Complete code
    self.each do |item|
      yield(item)
    end
  end

  def my_all?
    self.each do |item|
      return false if !yield(item)
    end
    true
  end

  def my_any?
    self.each do |item|
      return true if yield(item)
    end
    false
  end 
  
  def my_none?
    self.each do |item|
      return false if yield(item)
    end
    true
  end

  def my_each_with_index
    self.each_with_index do |item, index|
      yield(item) 
      yield(index)
    end
  end

  def my_count
    count = 0
    self.each do |item|
      if block_given?
        count += 1 if yield(item)
      else
        count += 1
      end
    end
    count
  end
end
