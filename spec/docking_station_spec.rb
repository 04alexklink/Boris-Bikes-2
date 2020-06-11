require 'docking_station'
require 'bike'

describe DockingStation do
  let(:station) {DockingStation.new}
  let(:bike) {Bike.new}
  
  it {should respond_to(:release_bike)}
  
  it "creates new instance of bike Class" do
    expect(station.release_bike).to be_a Bike
  end
   
  it "checks instance of bike is working" do
    expect((station.release_bike).working?).to be true
  end

    it {should respond_to(:dock)}
   
    it "docks with a bike as an argument" do
    expect(station).to respond_to(:dock).with(1).argument
  end
    
  before do
    station.dock(:bike)
  end
      it "should return the instance of bike" do
    expect(station.dock(bike)).to be_an_instance_of Bike
  end

end

  #it "it does dock a bike" do
  #  expect(station.dock(bike)).to eq("#{bike} docked")
  #end





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
