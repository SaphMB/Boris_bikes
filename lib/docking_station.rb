class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :bikes
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def bikes_in_station
    bikes.length
  end

  def station_has_bike?
    bikes == [] ? false : true
  end

  def dock_working_bike
    full? ? fail : bikes << Bike.new
  end

  def dock_broken_bike
    full? ? fail : bikes << Bike.new(false)
  end

  def release_bike
    check_bikes(0)
  end

  def check_bikes(n)
    if bikes.length >= n + 1
      return bikes.delete(bikes[n]) if bikes[n].working? == true
    check_bikes(n + 1)
    else
      fail
    end
  end

private

  def full?
    bikes_in_station == capacity
  end

  def empty?
    bikes_in_station == 0
  end

end
