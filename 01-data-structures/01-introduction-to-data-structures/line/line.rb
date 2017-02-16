# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    members.push(person)
  end

  def leave(person)
    members.delete_if {|p| p == person}
  end

  def front
    members[0]
  end

  def middle
    members[members.length / 2]
  end

  def back
    members[members.length - 1]
  end

  def search(person)
    members.select {|p| p == person}[0]
  end

end
