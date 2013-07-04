require "spec_helper"

describe Grid do
  let(:grid) {Grid.new}

  it "should initialize" do
    Grid.new.should be_true
  end
  
  it "respnds to coordnate j10" do
    expect(grid.j10).to be_instance_of(Cell)
  end

  it "respnds to coordnate c3" do
    expect(grid.c3).to be_instance_of(Cell)
  end

  it "respnds to coordnate a1" do
    expect(grid.a1).to be_instance_of(Cell)
  end

  it "should keep a state after shooting it" do
    grid.a1.shoot
    expect(grid.a1).to be_empty_shot
    expect(grid.a2).to be_empty
  end
end
