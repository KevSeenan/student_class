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

end
