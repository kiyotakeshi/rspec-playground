RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def get_number
    5
  end

  let(:variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods.append 'tomato'
    expect(@foods.length).to eq(1)
  end

  it 'called before different examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared context methods' do
    expect(get_number).to eq(5)
  end
end

RSpec.describe 'second example group' do
  include_context 'common'

  it 'can use shared let variables' do
    expect(variable).to eq([1, 2, 3])
  end
end
