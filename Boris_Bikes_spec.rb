require 'Boris_Bikes'

describe 'does docking station exist? and that bike is working' do
  it 'returns true when new docking station is created' do
    expect(Docking_station.new).to be_a Docking_station
  end

  it 'returns true or false when passed bike' do
  expect(Docking_station.working_bike.to eq true
  end
end
