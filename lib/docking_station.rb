class DockingStation

attr_accessor :bikes

def initialize(bikes=[Bike.new])
  @bikes = bikes
end

  def release_bike
    bikes.shift
  end

  def dock_bike
    bikes << Bike.new
  end

  def station_has_bike?
    bikes = [] ? true : false
  end

end

class Bike
  def working?
    true
  end
end
