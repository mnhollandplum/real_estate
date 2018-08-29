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

  def price_per_square_foot
    price = @price/area.to_f
    price.round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end
  end

  def rooms_by_category
    by_category = Hash.new([])
    @rooms.each do |room|
      by_category[room.category] += [room]
    end
    by_category
  end
end
