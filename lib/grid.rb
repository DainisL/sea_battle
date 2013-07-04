class Grid
  def initialize
  end

  x_axys = %w{a b c d e f g h i j}
  y_axys = (1..10).to_a.map {|y| y.to_s}

  x_axys.each do |x|
    y_axys.each do |y|
      define_method((x+y).to_sym) do
        if instance_variable_get("@#{x + y}")
          instance_variable_get("@#{x + y}")
        else
          instance_variable_set("@#{x + y}", Cell.new)
        end
      end
    end
  end
end
