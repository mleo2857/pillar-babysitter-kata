class Babysitter
  attr_reader :name, :joblog

  def initialize name
    @name = name
    @joblog = {}
  end

  def addJob date
    @jobdate = date
    @joblog[@jobdate] = {}
  end

end
