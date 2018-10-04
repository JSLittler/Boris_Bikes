require 'Docking_Station'

describe DockingStation do
  
  it 'releases working bikes' do
    bike = Bike.new #May need changing to check docked bike
    expect(bike.working?).to eq true
  end
 
  it 'allows bike to be docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'raises an error when there are no docked bikes' do
    expect{ subject.release_bike }.to raise_error("No bikes available.")
  end
end



