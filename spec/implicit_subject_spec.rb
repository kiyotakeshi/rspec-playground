RSpec.describe Hash do
  it 'should start empty' do
    # puts subject # {}
    # puts subject.class # Hash

    expect(subject.length).to eq(0)

    subject[:key] = "value"

    puts subject # {:key=>"value"}
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    # puts subject # {}
    expect(subject.length).to eq(0)
  end
end

RSpec.describe Array do
  it 'should start empty' do
    expect(subject.length).to eq(0)
    subject.push('value')
    subject.push('value2')

    expect(subject.length).to eq(2)
    expect(subject[0]).to eq('value')
  end
end
