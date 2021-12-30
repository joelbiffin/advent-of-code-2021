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

    assert_equal(7, solution)
  end
end


class TestThreeStepSum < Minitest::Test
  def test_list_length_divisible_by_three_uses_all_depths
    depths = [1, 2, 3, 4, 5, 6]
    solution = ThreeStepSum.create(depths: depths)
    expected = [6, 9, 12, 15]

    assert_equal(expected, solution)
  end

  def test_sample_question_solution
    depths = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    solution = ThreeStepSum.create(depths: depths)
    expected = [607, 618, 618, 617, 647, 716, 769, 792]

    assert_equal(expected, solution)
  end

  def test_list_length_not_divisible_by_three_uses_all_depths
    depths = [1, 2, 3, 4]
    solution = ThreeStepSum.create(depths: depths)
    expected = [6, 9]

    assert_equal(expected, solution)
  end

  def test_list_too_small_for_sliding_window
    depths = [1, 2]
    solution = ThreeStepSum.create(depths: depths)
    expected = []

    assert_equal(expected, solution)
  end
end
