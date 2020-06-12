require 'docking_station'
require 'bike'

describe DockingStation do
   
  let(:station) {DockingStation.new}
  let(:bike) {Bike.new}
  
  it {should respond_to(:release_bike)}
  
  it "creates new instance of bike Class" do
    expect(station.new_bike("test")).to be_a Bike
  end
   
  it "checks instance of bike is working" do
    station.dock(bike)
    expect((station.release_bike).working?).to be true
  end
  
  it {is_expected.to respond_to(:dock).with(1).argument }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) } #<-- old test for #bike
  
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there are no bikes when you ask for one' do
      expect { subject.release_bike }.to raise_error("there are no bikes to release")
    end
  end

  describe '#dock_bike' do
    it 'raises an error if bike already present in station' do
      station.dock(bike)
      bike2 = Bike.new
      expect {station.dock(bike2)}.to raise_error("The docking station is full")
    end
  end
end