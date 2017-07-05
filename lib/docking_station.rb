class DockingStation

attr_accessor :bikes

def initialize(bikes=[Bike.new])
  @bikes = bikes
end

  def release_bike
    station_has_bike? == true ? bikes.shift : fail
  end

  def dock_bike
    station_has_bike? == false ? bikes << Bike.new : fail
  end

  def station_has_bike?
    bikes == [] ? false : true
  end

end

class Bike
  def working?
    true
  end
end
