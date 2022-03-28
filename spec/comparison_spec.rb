RSpec.describe 'comparison matchers' do
  it 'comparison' do
    expect(3).to be > 1
  end

  describe 10 do
    it { is_expected.to be > 9}
  end
end
