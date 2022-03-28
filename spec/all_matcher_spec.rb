RSpec.describe 'all matcher' do
  it 'all matcher' do
    expect([1, 3, 5]).to all(be_odd)
    expect([2, 4, 6]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect(["","",""]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
  end

  describe [1, 3, 5] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 6) }
  end
end
