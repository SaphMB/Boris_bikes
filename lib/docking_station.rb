class DockingStation
  def release_bike
    Bike.new
  end
  def dock
    true
  end
end

class Bike
  def working?
    true
  end
end
