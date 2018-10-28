require 'minitest/autorun'
require 'minitest/spec'

require '../lib/babysitter'

describe Babysitter do
  subject {Babysitter.new}

  it 'must be an must be an instance of babysitter' do
    subject.must_be_instance_of Babysitter
  end

  it 'must have a name' do
    subject.must_respond_to 'name'
  end
end
