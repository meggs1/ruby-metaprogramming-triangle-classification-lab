class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if invalid
      raise TriangleError
    elsif side_one == side_two && side_two == side_three 
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_three == side_one
      :isosceles
    else side_one != side_two && side_two != side_three
      :scalene
    end
  end

  def invalid
    if side_one <= 0 || side_two <= 0 || side_three <= 0
        true
    elsif (side_one + side_two <= side_three) || (side_one + side_three <= side_two) || (side_two + side_three <= side_one)
        true
    end
  end

  class TriangleError < StandardError

  end

end
