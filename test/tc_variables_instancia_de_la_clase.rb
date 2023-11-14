require 'test/unit'
require 'lib/04.point_variables_instancia_de_la_clase'

class Testing < Test::Unit::TestCase
  def setup
    @p0 = Point::ORIGIN
    @p1 = Point.new(1,1)
    @p2 = Point.new(2,2)
  end

  def test_simple_2d
    assert_equal(@p0.to_s, "(0, 0)")
    assert_equal(@p1.to_s, "(1, 1)")
    assert_equal(@p2.to_s, "(2, 2)")

    assert_equal((@p1 + @p2).to_s, "(3, 3)")
  end
    
  def test_simple_variables_instancia_de_la_clase
    assert_equal([6,9,9], Point.report)
  end

  def test_simple_variables_instancia_de_la_clase_error
    assert_equal([nil,nil,nil], @p0.no_se_puede)
  end
end
