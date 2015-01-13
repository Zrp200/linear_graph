require "linear/slope_intercept"
module Linear
	class Standard < SlopeIntercept
		attr_reader :a, :b, :c
		def initialize(a, b, c)
			@a, @b, @c = a.to_i, b.to_i, c.to_i
		end
		def y_intercept
			c / b
		end
		def slope
			y_intercept / (c / a)
		end
		def to_s
			"#{idx a}x + #{idx b} = #{c}"
		end
	end
end
				
