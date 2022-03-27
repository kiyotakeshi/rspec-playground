RSpec.describe 'multi context hooks' do
  before(:context) do
    puts 'A'
  end

  before(:example) do
    puts 'B'
  end

  after(:example) do
    puts 'C'
  end

  it 'can multiply' do
    expect(3 * 1).to eq(3)
  end

  it 'can divide' do
    expect(10 / 2).to eq(5)
  end

  context 'with some criteria' do
    before(:context) do
      puts 'D'
    end

    before(:example) do
      puts 'E'
    end

    it 'can subtract' do
      expect(5 - 3).to eq(2)
    end

    context 'in this condition' do
      before(:example) do
        puts 'F'
      end

      it 'can add' do
        expect(2 + 3).to eq(5)
      end
    end
  end
end
