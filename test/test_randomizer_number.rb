require 'test/unit'
require 'factory_randomizer'

class RandomizerTest < Test::Unit::TestCase
  def test_random_number
    assert_not_nil Randomizer.number
  end
  
  def test_random_number_with_max
    100.times do
      assert Randomizer.number(:max => 20) < 20
    end
  end
end