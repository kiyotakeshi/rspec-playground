class Card
  attr_accessor :type, :suit

  def initialize(type, suit)
    @type = type
    @suit = suit
  end

  @type
  @suit

end

RSpec.describe 'Card' do
  # before do
  #   @card = Card.new('ace', 'spades')
  # end

  # invoke each example, so we are guaranteeing isolation and independence
  # def card
  #   Card.new('ace', 'spades')
  # end
  let(:card) { Card.new('ace', 'spades') }

  it 'has a type' do
    expect(card.type).to eq('ace')
    card.type = 'Queen'
    expect(card.type).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('spades')
  end

  # it 'has a custom error message' do
  #   comparison = 'spade'
  #   expect(card.suit).to eq(comparison), "I expected #{comparison} but I got #{card.suit} instead"
  # end
end
