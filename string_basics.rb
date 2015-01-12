require 'pry'
class SimpleString
  attr_reader :data

  def initialize(the_data)
    @data = the_data
  end

  def length_new
    @data.chars.count
  end

  def end_with_new?(ends_with)
  count = 0
  block_end_string = ends_with.chars.reverse

  block_end_string.each do |letter|
    count += 1
    if letter == @data[-count]
      true
    else
      return false
    end
  end
  end

  def upcase_new
    lower_alpha = ("a".."z").to_a.join
    upper_alpha = ("A".."Z").to_a.join
    if @data == ''
      return ""
    else
    return @data.tr(lower_alpha, upper_alpha)
    end
  end

  def lowercase_new
    lower_alpha = ("a".."z").to_a.join
    upper_alpha = ("A".."Z").to_a.join
    if @data == ''
      return ""
    else
      return @data.tr(upper_alpha, lower_alpha)
    end
  end

  def plus(to_be_added)
    [@data.chars, to_be_added.data.chars].join
  end

end
