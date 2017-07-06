require 'docking_station.rb'

describe DockingStation do
  subject(:station){DockingStation.new}
  test_bike = Bike.new
  it {is_expected.to respond_to :release_bike}

  # it 'relese bike from station' do
  #   bike = station.release_bike
  #   expect(bike.working?).to be_truthy
  # end

  it 'checks if bike is docked' do
    station.bikes << [test_bike]
    expect(station.station_has_bike?).to be_truthy
  end

  it 'cannot dock bike when is station is full' do
   bikes = []
   bikes.length == DockingStation::DEFAULT_CAPACITY
   expect {bikes.dock_bike}.to raise_error
   end

  it 'raise error when releasing bike from empty station' do
    bikes = []
    expect {bikes.release_bike}.to raise_error
  end

end
