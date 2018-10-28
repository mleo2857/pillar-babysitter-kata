class Babysitter
  attr_reader :name, :joblog

  def initialize name
    @name = name
    @joblog = {}
  end

  def addJob date
    if @joblog.include?(date)
      return @name + ' is busy that night'
    end

    @joblog[date] = {}

  end

end
