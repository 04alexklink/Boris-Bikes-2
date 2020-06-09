require 'docking_station'
require 'bike'

describe DockingStation do
  it {should respond_to(:release_bike)}

  it {expect((:release_bike:working?).to be_true}

  #expect DockingStation.release_bike to output Bike.new
  #expect
  #then b) expects the bike to be working?

  #Your test should check that you can call working? on the result of DockingStation.release_bike,
  #and that the result of doing so is true.


end
#
# describe DockingStation.release_bike do
#   it {should respond_to(:working?)}
#
# end
