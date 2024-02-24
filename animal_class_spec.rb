class Animal
  # Constructor
  def initialize(species, lifespan, weight)
    @species = species
    @lifespan = lifespan
    @weight = weight
  end

  def move
    puts "This #{@species} is moving around."
  end

  def sleep
    puts "This #{@species} is getting some rest."
  end

  def reproduce
    puts "This #{@species} is NOT getting some rest."
  end

  def eat(what, how_much)
    puts "This #{@species} is eating #{what}."
    @weight += how_much
  end
end

# RSpec for testing for animal class
describe Animal do
  describe '#initialize' do
    it 'sets the species, lifespan, and weight' do
      animal = Animal.new('lion', 15, 200)
      expect(animal.instance_variable_get(:@species)).to eq('lion')
      expect(animal.instance_variable_get(:@lifespan)).to eq(15)
      expect(animal.instance_variable_get(:@weight)).to eq(200)
    end
  end

  describe '#eat' do
    it 'increases the weight of the animal' do
      animal = Animal.new('bear', 20, 500)
      initial_weight = animal.instance_variable_get(:@weight)
      animal.eat('berries', 10)
      expect(animal.instance_variable_get(:@weight)).to eq(initial_weight + 10)
    end
  end

  describe '#move' do
    it 'outputs the animal moving' do
      animal = Animal.new('cheetah', 8, 120)
      expect { animal.move }.to output("This cheetah is moving around.\n").to_stdout
    end
  end

  describe '#sleep' do
    it 'outputs the animal sleeping' do
      animal = Animal.new('koala', 18, 30)
      expect { animal.sleep }.to output("This koala is getting some rest.\n").to_stdout
    end
  end

  describe '#reproduce' do
    it 'outputs the animal making babbies' do
      animal = Animal.new('rabbit', 5, 5)
      expect { animal.reproduce }.to output("This rabbit is NOT getting some rest.\n").to_stdout
    end
  end
end
