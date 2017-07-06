class Bike

attr_accessor :working

  def initialize(working=true)
    @working = working
  end

  def working?
    working
  end

  def report_broken
    self.working = false
  end
end
