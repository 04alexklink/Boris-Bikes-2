require 'bike'

describe Bike do
  it 'should respond to working' do
  expect(subject.working).to eq(true)
  end

  it 'should respond to broken' do
  expect(subject.broken).to eq(false)
  end

end
