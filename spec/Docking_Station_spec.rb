require 'Docking_Station'

describe DockingStation do
  it 'releases a bike' do
    bike = subject.release_bike
    expect(bike).to be_an_instance_of(Bike)
  end
  
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
 
  it 'allows bike to be docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

end



