
class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    bikes_available? ? @bikes.shift : fail("no bikes available")
  end

  def dock(bike)
    full? ? fail("bikes full, no bike dock") : @bikes << bike
  end

  private

  def full?
    @bikes.size == @capacity
  end

  def bikes_available?
    !@bikes.select{|bike| bike.working? }.empty?
  end

end
