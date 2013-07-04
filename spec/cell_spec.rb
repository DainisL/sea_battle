require "spec_helper"
describe Cell do
  let(:c) { Cell.new }
  let(:full_c) { Cell.new("full") }

  it "has initial state of empty" do
    c.should be_empty
  end
  it "has shot state when be shot at" do
    c.shoot
    c.should be_empty_shot
  end
  it "has shot state when be shot at full shot" do
    full_c.shoot
    full_c.should be_full_shot
  end
  it "has shot state when be shot at empty shot" do
    c.shoot
    expect { c.shoot }.to raise_error
  end
  it "has shot state when be shot at full shot is shot" do
    full_c.shoot
    expect { full_c.shoot }.to raise_error
  end
end