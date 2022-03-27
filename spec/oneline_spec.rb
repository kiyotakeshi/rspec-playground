RSpec.describe 'shorthand syntax' do
  subject { 3 }

  context 'with basic syntax' do
    it 'should equal 3' do
      expect(subject).to eq(3)
    end
  end

  context 'with oneline syntax' do
    it { is_expected.to eq(3) }
  end
end
