RSpec.describe 'before and after hooks' do
  before(:example) do
    puts 'before example'
  end

  after(:example) do
    # この中で状態を元に戻したりする
    puts 'after example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end
