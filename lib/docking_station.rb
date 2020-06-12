
class DockingStation
  attr_reader :bike

  def release_bike
    fail 'there are no bikes to release' unless @bike
    @bike
  end
  
  def new_bike(name)
    name = Bike.new
  end

  def dock(bike)
    fail 'The docking station is full' if @bike
    @bike = bike
  end

end