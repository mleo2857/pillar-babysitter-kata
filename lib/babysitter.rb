class Babysitter
  attr_reader :name, :joblog

  def initialize name
    @name = name
    @joblog = {}
  end
end
