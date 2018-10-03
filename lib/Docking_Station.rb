require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike_dock = []
    @bike_dock.push(bike)
    @bike_dock
  end
end