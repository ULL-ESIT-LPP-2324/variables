require 'test/unit'
require 'lib/01.point_variables_instancia'

class Testing < Test::Unit::TestCase
  def test_simple_2d
    p0 = Point::ORIGIN
    p1 = Point.new(1,1)
    p2 = Point.new(2,2)
    
    assert_equal(p0.to_s, "(0, 0)")
    assert_equal(p1.to_s, "(1, 1)")
    assert_equal(p2.to_s, "(2, 2)")

    assert_equal((p1 + p2).to_s, "(3, 3)")
  end
    
  def test_simple_3d
    p03d = Point3D::ORIGIN
    p13d = Point3D.new(1,1,1)
    p23d = Point3D.new(2,2,2)
    
    assert_equal(p03d.to_s, "(invalidada, invalidada, 0)")
    assert_equal(p13d.to_s, "(invalidada, invalidada, 1)")
    assert_equal(p23d.to_s, "(invalidada, invalidada, 2)")

    assert_equal((p13d + p23d).to_s, "(invalidadainvalidada, invalidadainvalidada)")
  end
end
