class DockingStation
  station = DockingStation.new
  def release_bike
    Bike.new
  end
end

class Bike
  def working?
    true
  end
end
