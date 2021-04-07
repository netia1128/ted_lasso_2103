require './lib/player'

RSpec.describe Player do

  before do
    @roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
  end

  describe '#initialize' do
    it 'starts with a name' do
      expect(@roy.name).to eq("Roy Kent")
    end
    it 'starts with a position' do
      expect(@roy.position).to eq("Center Midfielder")
    end
    it 'starts with a salary' do
      expect(@roy.salary).to eq(1000000)
    end
  end
end
