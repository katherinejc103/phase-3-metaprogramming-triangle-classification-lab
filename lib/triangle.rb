class Triangle
  # write code here
  attr_accessor :a, :b, :c

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind 
      larger_than_zero
      triangle_inequality
      if  a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end 

    def larger_than_zero
      if !(a > 0 && b > 0 && c > 0)
        raise TriangleError
      end
    end 

    def triangle_inequality
      if (a + b > c || b + c > a || c + a > b )
        raise TriangleError
      end
    end 

    class TriangleError < StandardError
    end

end
