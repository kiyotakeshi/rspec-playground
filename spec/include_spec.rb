RSpec.describe 'include' do
  describe 'delicious mike popcorn' do
    it 'string inclusion' do
      expect(subject).to include('delicious')
      expect(subject).to include('mike')
      expect(subject).to include('popcorn')
    end

    it { is_expected.to include('mike') }
  end

  describe [1, 2, 3] do
    it 'array' do
      expect(subject).to include(1)
      expect(subject).to include(1, 2)
    end

    it { is_expected.to include(1, 2) }
  end

  describe ({ a: 1, b: 2 }) do
    it 'key existence' do
      expect(subject).to include(:a)
    end

    it { is_expected.to include(a: 1) }
  end
end
