require 'docking_station.rb'
describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'relese bike from station' do
  station = DockingStation.new
  bike = station.release_bike
  expect(bike.working?).to be_truthy
  end
end
