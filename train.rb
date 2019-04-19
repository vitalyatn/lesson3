class Train

  attr_reader :speed, :wagons, :type, :number

  def initialize(number,type,wagons)
    type_trains = "пассажирский грузовой"
    @number = number
    if type_trains.include? type
      @type = type
    else
      puts "Такого типа поезда нет!По умолчанию установлен - грузовой"
      @type = "грузовой"
    end
    @speed = 0
    @wagons = wagons
   end

  def speed_up
    @speed += 10
  end

  def stop
    @speed = 0
  end

  def add_wagon
    if @speed == 0
      @wagons += 1
    else
      puts "Прицепить вагон нельзя! Остановите поезд!"
    end
  end

  def delete_wagon
    if @speed == 0
      @wagons -= 1
    else
      puts "Отцепить вагон нельзя! Остановите поезд!"
    end
  end

  def add_route(route)
    @route = route
    @station_index = 0
    curr_station.add_train(self)

  end

  def forward
    if next_station
      curr_station.delete_train(self)
      next_station.add_train(self)
      @station_index += 1
    else
      puts "Двигаться некуда!"
    end
  end

  def back
    if @station_index != 0
      curr_station.delete_train(self)
      prev_station.add_train(self)
      @station_index -= 1
    else
      puts "Двигаться некуда!"
    end
  end

  def next_station
    @route.stations[@station_index + 1]
  end

  def prev_station
    @route.stations[@station_index - 1]
  end

  def curr_station
    @route.stations[@station_index]
  end

end
