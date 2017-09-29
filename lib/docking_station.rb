# in lib/docking_station.rb

# require_relative 'bike'


class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    empty? ? fail("no bikes available") : @bikes.shift
  end

  def dock(bike)
    full? ? fail("bikes full, no bike dock") : @bikes << bike
  end

  private

  def full?
    @bikes.size == @capacity
  end

  def empty?
    @bikes.empty?
  end

end
