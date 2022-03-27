class Person
  attr_reader :name

  def initialize(name = 'mike')
    @name = name
  end
end

RSpec.describe Person do
  let(:person) { Person.new('kanye') }

  it 'should store the name' do
    expect(person.name).to eq('kanye')
  end

  context "with no argumenet" do
    let(:person) { Person.new}

    it 'should default name' do
      expect(person.name).to eq('mike')
    end
  end
end