class DockingStation

  attr_accessor :bikes

  def initialize(bikes=[Bike.new])
    @bikes = bikes
  end

  def bikes_in_station
    bikes.length
  end

  def full?
    bikes_in_station == 20
  end

  def empty?
    bikes_in_station == 0
  end

  def dock_bike
    self.full? ? fail : bikes << Bike.new
  end

  def release_bike
    self.empty? ? fail : bikes.shift
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
