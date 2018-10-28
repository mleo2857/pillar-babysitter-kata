class Babysitter
  attr_reader :name, :joblog

  def initialize name
    @name = name
    @joblog = {}
  end

  def addJob date
    @joblog[date] = {}
  end

end
