class Station

  attr_reader :trains, :title

  def initialize(title)
    @title = title
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def delete_train(train)
    puts "Поезд № #{train.number} отправлен со станции #{title}"
    trains.delete_if {|train_go| train_go == train }
  end

  def trains_by_type(type)
    @trains.select { |train|  train.type == type }
  end

end
