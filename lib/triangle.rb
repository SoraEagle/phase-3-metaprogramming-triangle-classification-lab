class Triangle
  attr_reader :a, :b, :c

  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError unless [a, b, c].all? {|s| s > 0} && a + b > c && b + c > a && a + c > b

    if a == b && a == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end