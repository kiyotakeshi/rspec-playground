RSpec.shared_examples 'three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { ['a', 'b', 'c'] }
  include_examples 'three elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'three elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'three elements'
end

class Dumpling
  def length
    3
  end
end

RSpec.describe Dumpling do
  # subject { Dumpling.new }
  subject { described_class.new }
  include_examples 'three elements'
end
