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

  def dock_bike
    full? ? fail : bikes << Bike.new
  end

  def release_bike
    bikes.each {|bike| bike.working?}
  #  empty? ? fail : bikes.shift
  end

private

  def full?
    bikes_in_station == capacity
  end

  def empty?
    bikes_in_station == 0
  end

end
