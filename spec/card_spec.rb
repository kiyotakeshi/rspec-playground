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
  it 'has a type and suit' do
    card = Card.new('ace', 'spades')
    expect(card.type).to eq('ace')
    expect(card.suit).to eq('spades')
  end
end
