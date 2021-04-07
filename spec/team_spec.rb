require './lib/team'
require './lib/player'

RSpec.describe Team do

  before do
    @roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    @sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    @richmond = Team.new("AFC Richmond", "Ted Lasso", [@roy, @sam])
  end

  describe '#initialize' do
    it 'starts with a name' do
      expect(@richmond.name).to eq("AFC Richmond")
    end
    it 'starts with a coach' do
      expect(@richmond.coach).to eq("Ted Lasso")
    end
    it 'starts with a players array' do
      expect(@richmond.players).to eq([@roy, @sam])
    end
  end
  describe '#total_salary?' do
    it 'provides a sum of all the players salaries' do
      expect(@richmond.total_salary).to eq(1600000)
    end
  end
  describe '#capitan' do
    it 'returns the capitan' do
      expect(@richmond.capitan).to eq("Roy Kent")
    end
  end
  describe '#positions_filled' do
    it 'returns the positions of all players' do
      expect(@richmond.positions_filled).to eq(["Center Midfielder", "Right-back Defender"])
    end
  end
end
