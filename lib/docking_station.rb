class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :bikes

  def initialize(bikes=[Bike.new])
    @bikes = bikes
  end

  def bikes_in_station
    bikes.length
  end

  def station_has_bike?
    bikes == [] ? false : true
  end

  def dock_bike
    full? ? fail : bikes << Bike.new
  end

  def release_bike
    empty? ? fail : bikes.shift
  end

private

  def full?
    bikes_in_station == DEFAULT_CAPACITY
  end

  def empty?
    bikes_in_station == 0
  end

end

class Bike
  def working?
    true
  end
end
