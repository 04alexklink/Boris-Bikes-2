require_relative('bike')
class DockingStation
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = []
    @capacity = capacity
  end

  def release_bike
    fail 'there are no bikes to release' if empty?
    @bike.pop
  end
  
  def new_bike(name)
    name = Bike.new
  end

  def dock(bike)
    fail 'The docking station is full' if full?
    @bike << bike
    @bike.last
  end
  
  private
  
  def empty?
    @bike.empty?
  end
  
  def full?
    @bike.length == DEFAULT_CAPACITY
  end
end