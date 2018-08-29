require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_room_exists
    room = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, room
  end

  def test_room_has_category
    room = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, room.category
  end

  def test_room_has_length
    room = Room.new(:bedroom, 10, 13)

    assert_equal 10, room.length
  end

  def test_room_has_width
    room = Room.new(:bedroom, 10, 13)

    assert_equal 13, room.width
  end

  def test_room_has_floor_area
    room = Room.new(:bedroom, 10, 13)

    assert_equal 130, room.area
  end
end
