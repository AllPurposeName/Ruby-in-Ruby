require 'pry'

class SimpleArray
  attr_reader :data

  def initialize(the_data)
    @data = the_data
  end

  def first_new
    @data[0]
  end

  def last_new
    @data[-1]
  end

  def join_new(insertion)
    (@data.map do |element|
      if element != @data[-1]
        # binding.pry
        element += insertion
      else element = element
        # binding.pry
      end
    end).reduce(:+)
  end

  def count_new
    count = 0
    @data.each { |element| count += 1 }
    return count
  end


end
