require 'Docking_Station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
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



