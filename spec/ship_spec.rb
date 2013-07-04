require "spec_helper"

describe Ship do
  it "should raise error if coodinate is invalid" do
    start_coordinate = "z1"
    size = 4
    direction = "x" 
    expect {Ship.new(start_coordinate, size, direction)}.to raise_error
  end

  it "should raise an error if size is not between 2-4" do
    start_coordinate = "a1"
    size = 5 
    direction = "x" 
    expect {Ship.new(start_coordinate, size, direction)}.to raise_error
  end

  it "should raise an error if size direction is not x or y" do
    start_coordinate = "a1"
    size = 2 
    direction = "o" 
    expect {Ship.new(start_coordinate, size, direction)}.to raise_error
  end

end
