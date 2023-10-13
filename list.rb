require './enumarable'

class MyList
  include MyEnumerable
  def initialize(array)
    @list = array
  end

  def each
    counter = 0
    until counter == @list.size
      yield @list[counter]
      counter += 1
    end
  end
end
