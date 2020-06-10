
class DockingStation
  def release_bike
    Bike.new
 # p bike.working?
  end

  def dock(bike)
    return "#{bike} docked"
  end

end
