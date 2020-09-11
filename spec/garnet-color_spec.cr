require "spec"
require "../src/garnet-color"

include Garnet

describe Color do
  it "should have white global" do
    white = Color::WHITE
    white.red.should eq(1_f32)
    white.green.should eq(1_f32)
    white.blue.should eq(1_f32)
    white.alpha.should eq(1_f32)
  end

  it "should have black global" do
    black = Color::BLACK
    black.red.should eq(0_f32)
    black.green.should eq(0_f32)
    black.blue.should eq(0_f32)
    black.alpha.should eq(1_f32)
  end

  it "should construct" do
    grey = Color.new(0.5_f32, 0.5_f32, 0.5_f32, 1_f32)
    grey.red.should eq(0.5_f32)
    grey.green.should eq(0.5_f32)
    grey.blue.should eq(0.5_f32)
    grey.alpha.should eq(1_f32)
  end

  it "should lerp" do
    grey = Color.new(0.5_f32, 0.5_f32, 0.5_f32, 1_f32)
    Color::WHITE.lerp(Color::BLACK, 0.5_f32).should eq(grey)
  end
end
