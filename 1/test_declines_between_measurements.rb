require "minitest/autorun"
require_relative "./declines_between_measurements"

class TestNumberOfDeclinesBetweenMeasurements < Minitest::Test
  def test_one_depth_returns_zero
    depths = [1]
    solution = NumberOfDeclinesBetweenMeasurements.from(depths: depths)

    assert_equal(solution, 0)
  end

  def test_that_sample_question_solution
    depths = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    solution = NumberOfDeclinesBetweenMeasurements.from(depths: depths)

    assert_equal(solution, 7)
  end
end
