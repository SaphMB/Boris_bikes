require 'docking_station.rb'
describe DockingStation do
  it 'respond to release bile' do
    expect(DockingStation).respond_to(release_bike)
  end
end
