require 'minitest/autorun'
require 'minitest/spec'

require '../lib/babysitter'

describe Babysitter do
  subject {Babysitter.new 'Julie'}

  it 'must be an must be an instance of babysitter' do
    subject.must_be_instance_of Babysitter
  end

  it 'must have a name' do
    subject.must_respond_to 'name'
  end

  it 'must initialize with a name' do
    babysitter = Babysitter.new 'Sarah'
    babysitter.name.must_equal 'Sarah'
  end
end
