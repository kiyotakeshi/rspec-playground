RSpec.describe 'start with and end with matchers' do
  describe 'mike popcorn' do
    it 'check string start with and end with' do
      # expect(subject).to start_with('mike')
      # expect(subject).to end_with('popcorn')
      expect(subject).to start_with('mike').and end_with('popcorn')
    end
  end

  describe [:a, :b, :c] do
    it 'check array start with and end with' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:c)
      expect(subject).to end_with(:b, :c)
    end

    it { is_expected.to start_with(:a) }
  end
end
