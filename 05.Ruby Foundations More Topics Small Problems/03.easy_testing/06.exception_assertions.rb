require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NoExperienceError < StandardError
end

class Employee
  # def initialize
  #   @experience = nil
  # end

  def hire
    raise(NoExperienceError)
  end
end

class ExceptionAssertions < MiniTest::Test
  def setup
    @employee = Employee.new
  end

  def test_employee_experience
    assert_raises(NoExperienceError) {@employee.hire}
    # assert_equal("uh oh", @employee.hire)
  end
end