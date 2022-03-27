class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end
end

RSpec.describe School do
  it 'has a name' do
    school = School.new('Compton High School')
    expect(school.name).to eq('Compton High School')
  end

  it 'should start off with no students' do
    school = School.new('Compton High School')
    expect(school.students).to eq([])
  end
end
