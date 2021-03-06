class Route

  def initialize(start_station, end_station)
    @start_station = start_station
    @end_station = end_station
    @railway_stations = []
  end

  def add_station(station)
     @railway_stations << station
  end

  def delete_station(station)
    puts "Промежуточная станция #{train} удалена"
    railway_stations.delete_if {|station_del| station_del == station }
  end

  def stations
    [@start_station, @railway_stations, @end_station].flatten
  end

end
