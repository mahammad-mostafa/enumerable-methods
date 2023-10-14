require_relative 'enumarable'

class MyList
  include MyEnumerable
  def initialize(*numbers)
    @list = numbers
  end

  def each
    counter = 0
    until counter == @list.size
      yield @list[counter]
      counter += 1
    end
  end
end
