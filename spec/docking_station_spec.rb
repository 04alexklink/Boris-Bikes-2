require 'docking_station'
require 'bike'

describe DockingStation do
  let(:station) {DockingStation.new}
  it {should respond_to(:release_bike)}
  it "creates new instance of bike Class" do
    expect(station.release_bike).to be_a Bike
  end
end



  #expect DockingStation.release_bike to output Bike.new
 
 #then b) expects the bike to be working?
  #it {expect((:release_bike:working?).to be_true}
 
  #Your test should check that you can call working? on the result of DockingStation.release_bike,
  #and that the result of doing so is true.


#
# describe DockingStation.release_bike do
#   it {should respond_to(:working?)}
#
# end
