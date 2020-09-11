struct Garnet::Color
  getter :red
  getter :green
  getter :blue
  getter :alpha

  WHITE = self.new(1.0_f32, 1.0_f32, 1.0_f32, 1.0_f32)
  BLACK = self.new(0.0_f32, 0.0_f32, 0.0_f32, 1.0_f32)

  def initialize(@red : Float32, @green : Float32, @blue : Float32, @alpha : Float32)
  end

  def lerp(other : self, t : Float32)
    t = { { 0_f32, t }.max, 1_f32 }.min
    tn = 1.0_f32 - t

    self.class.new(
      tn * red + t * other.red,
      tn * green + t * other.green,
      tn * blue + t * other.blue,
      tn * alpha + t * other.alpha,
    )
  end
end
