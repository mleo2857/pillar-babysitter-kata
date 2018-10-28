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

  it 'should keep track of babysitting jobs' do
    subject.must_respond_to 'joblog'
  end

  it 'must have an empty hash of jobs' do
    subject.joblog.must_be_instance_of Hash
    subject.joblog.must_be_empty
  end

  describe '#addJob' do
    before do
      @babysitter = Babysitter.new 'Laurie'
    end

    it 'responds to the add job method' do
      @babysitter.must_respond_to 'addJob'
    end

    it 'records the date of the job in the joblog' do
      @babysitter.addJob '10/27/18'
      @babysitter.joblog.must_include '10/27/18'
    end
  end

end
