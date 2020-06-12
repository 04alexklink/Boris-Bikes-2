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
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike) } #<-- old test for #bike
  
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike[-1]).to eq bike
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
  
    it 'raises an error if no bikes available when you ask for one' do
      station.dock(bike)
      station.release_bike
      expect {station.release_bike}.to raise_error("there are no bikes to release")
    end
    
    
    
  describe '#dock(bike)' do
    it 'raises an error if 20 bikes already present in station' do
      DockingStation:: DEFAULT_CAPACITY.times do
        station.dock(bike)
      end
      expect {station.dock(bike)}.to raise_error("The docking station is full")
    end
  end 
  
  describe '#dock(bike)' do
    it 'does not raise error if 19 bikes already present in station' do
      19.times {station.dock(bike)}
      expect(station.dock(bike)).to eq bike
    end
  end 
      
  describe '#initialize' do
    it 'should have an empty array for @bikes instance variable' do
      expect(station.bike).to be_an_instance_of(Array)  
    end
  end
end
