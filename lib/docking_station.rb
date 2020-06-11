
class DockingStation
  attr_reader :bike

  def release_bike
    fail 'there are no bikes to release' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end
