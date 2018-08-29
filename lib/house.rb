class House
    attr_reader :price, :address, :rooms


  def initialize(price, address)
    @price = price.tr('$', '').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
        room.category == category
      end
  end

  def area
    @rooms.map do |room|
      room.area
    end.sum
  end
end
