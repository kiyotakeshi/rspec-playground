class Card
  attr_reader :type, :suit
  def initialize(type, suit)
    @type = type
    @suit = suit
  end

  @type
  @suit

end

RSpec.describe 'Card' do
  before do
    # puts "this called before each example"
    @card = Card.new('ace', 'spades')
  end

  it 'has a type' do
    expect(@card.type).to eq('ace')
  end
  it 'has a suit' do
    expect(@card.suit).to eq('spades')
  end
end
