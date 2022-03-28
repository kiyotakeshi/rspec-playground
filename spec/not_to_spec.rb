RSpec.describe 'not_to' do
  it 'two values do not match' do
    expect(1).not_to eq(3)
    expect('hello').not_to eq('Hello')
    expect(['a', 'b', 'c']).not_to eq([1, 2, 3])
  end
end
