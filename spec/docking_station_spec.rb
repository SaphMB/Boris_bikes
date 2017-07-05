require 'docking_station.rb'
describe DockingStation do
  subject(:station){DockingStation.new}
  it {is_expected.to respond_to :release_bike}

  it 'relese bike from station' do
    bike = station.release_bike
    expect(bike.working?).to be_truthy
  end

  it 'docks a bike' do
    expect(station.dock).to be_truthy
  end
end
