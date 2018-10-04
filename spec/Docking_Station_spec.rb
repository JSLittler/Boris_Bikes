require 'Docking_Station'

describe DockingStation do
  
  it 'releases working bikes' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'raises an error when there are no docked bikes' do
    expect{ subject.release_bike }.to raise_error("No bikes available.")
  end

  it 'raises and error if docking station is full' do
    subject.dock(Bike.new)

    expect{ subject.dock(Bike.new) }.to raise_error("Docking station full.")
  end
end



