# Las varialbles de instancia NO son definidas por la clase del objeto
# por lo tanto, no tienen nada que ver con la herencia

class Point
  attr_reader :x, :y
  
  def initialize(x,y)
    @x, @y = x, y
  end
  
  #metodos de instancia
  def *(value)
    Point.new(@x * value, @y * value)
  end
  
  def -@
    Point.new(-@x, -@y)
  end
  
  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end
  
  #constante
  ORIGIN = Point.new(0,0)

  def to_s
    "(#{@x}, #{@y})"
  end
  
end

#Herencia
class Point3D < Point
  attr_reader :z
  def initialize(x,y,z)
    super(x,y)
    @x = 'invalidada'
    @y = 'invalidada'
    @z = z
  end

  def to_s
    "(#{@x}, #{@y}, #{@z})"
  end
  
  #constante
  ORIGIN = Point3D.new(0,0,0)
end
