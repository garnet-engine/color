struct Garnet::Color
  property :r
  property :g
  property :b
  property :a

  WHITE = self.new(1.0_f32, 1.0_f32, 1.0_f32, 1.0_f32)
  BLACK = self.new(0.0_f32, 0.0_f32, 0.0_f32, 1.0_f32)

  def initialize(@r : Float32, @g : Float32, @b : Float32, @a : Float32)
  end

  def lerp(other : self, t : Float32)
    t = { { 0_f32, t }.max, 1_f32 }.min
    tn = 1.0_f32 - t

    self.class.new(
      tn * r + t * other.r,
      tn * g + t * other.g,
      tn * b + t * other.b,
      tn * a + t * other.a,
    )
  end
end
