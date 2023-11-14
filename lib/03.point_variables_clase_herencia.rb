# Las variables de instancia se evaluan siempre en referencia a self.
# Las variables de clase     se evaluan en referencia al objeto Class que se crea.

class Point
  attr_reader :x, :y

  #las variables de clase se inicializan en la propia clase
  @@number_of_points = 0
  @@sum_of_x = 0
  @@sum_of_y = 0
  
  def initialize(x,y)
    @x, @y = x, y

    #se pueden usar las variables de clase en un método de instancia
    @@number_of_points += 1
    @@sum_of_x += x
    @@sum_of_y += y
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
  
  def to_s
    "(#{@x}, #{@y})"
  end

  # métodos de clase
  # variables de clase usadas en métodos de clase
  def self.count
    @@number_of_points
  end

  #def self.report
  #def Point.report
  class << self
    def report
      #"nro. puntos #{@@number_of_points}" "suma x #{@@sum_of_x}" "suma y #{@@sum_of_y}"
      [@@number_of_points, @@sum_of_x, @@sum_of_y]
    end
  end

  #constante
  ORIGIN = Point.new(0,0)
  
end

#Herencia
class Point3D < Point
  attr_reader :z

  #variable de clase
  @@sum_of_z = 0

  def initialize(x,y,z)
    super(x,y)
    @z = z

    #se usa en un método de instancia
    @@sum_of_z += z
  end

  def to_s
    "(#{@x}, #{@y}, #{@z})"
  end
  
  #constante
  ORIGIN = Point3D.new(0,0,0)

  class << self
    def report
      #                        "suma z #{@@sum_of_z}"
      self.superclass.report << @@sum_of_z
    end
  end
end
