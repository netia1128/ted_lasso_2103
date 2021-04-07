require './lib/team'
require './lib/player'
require './lib/league'

RSpec.describe Team do

  before do
    @premier = League.new("Premier League")
    @roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    @sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    @richmond = Team.new("AFC Richmond", "Ted Lasso", [@roy, @sam])
    @jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    @fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    @manchester = Team.new("Manchester City FC", "Pep Guardiola", [@jamie, @fernandinho])
    @premier.add_team(@richmond)
    @premier.add_team(@manchester)
  end

  describe '#initialize' do
    it 'starts as a League object' do
      expect(@premier).to be_an_instance_of(League)
    end
    it 'starts with a name' do
      expect(@premier.name).to eq("Premier League")
    end
    it 'starts with an empty players array' do
      expect(@premier.players).to eq([])
    end
  end
  describe '#add_team' do
    it 'lets you add teams' do
      expect(@premier.teams).to eq([@richmond, @manchester])
    end
  end
  describe '#capitans' do
    it 'provides and array of all team capitans' do
      expect(@premier.capitans).to eq([@roy, @fernandinho])
    end
  end
  describe '#players_by_team' do
    it 'provides a hash of all the players by team' do
      expect(@premier.players_by_team).to eq({@richmond => [@roy.name, @sam.name], @manchester => [@jamie.name, @fernandinho.name]})
    end
  end
end
