RSpec.describe Hash do
  subject(:sample_hash) do
    { a: 1, b:2 }
  end

  it 'has two key-value' do
    expect(subject.length).to eq(2)
    expect(sample_hash.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value' do
      expect(subject.length).to eq(2)
      expect(sample_hash.length).to eq(2)
    end
  end
end
