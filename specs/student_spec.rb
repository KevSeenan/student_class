require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Kevin", "G14")
  end

  def test_student_name()
    assert_equal("Kevin", @student.student_name)
  end

  def test_student_cohort()
    assert_equal("G14", @student.student_cohort)
  end

  def test_set_student_name()
    @student.set_student_name("Dave")
    assert_equal("Dave", @student.student_name)
  end

  def test_set_student_cohort()
    @student.set_student_cohort("G15")
    assert_equal("G15", @student.student_cohort)
  end

  def test_student_talking()
    assert_equal("Hey, I can talk!", @student.student_talking)
  end

  def test_student_favourite_language()
    assert_equal("I love Ruby!", @student.student_favourite_language("Ruby"))
  end

end
