require "spec"
require "../src/garnet-color"

include Garnet

describe Color do
  it "should have white global" do
    white = Color::WHITE
    white.r.should eq(1_f32)
    white.g.should eq(1_f32)
    white.b.should eq(1_f32)
    white.a.should eq(1_f32)
  end

  it "should have black global" do
    black = Color::BLACK
    black.r.should eq(0_f32)
    black.g.should eq(0_f32)
    black.b.should eq(0_f32)
    black.a.should eq(1_f32)
  end

  it "should construct" do
    grey = Color.new(0.5_f32, 0.5_f32, 0.5_f32, 1_f32)
    grey.r.should eq(0.5_f32)
    grey.g.should eq(0.5_f32)
    grey.b.should eq(0.5_f32)
    grey.a.should eq(1_f32)
  end

  it "should lerp" do
    grey = Color.new(0.5_f32, 0.5_f32, 0.5_f32, 1_f32)
    Color::WHITE.lerp(Color::BLACK, 0.5_f32).should eq(grey)
  end
end
