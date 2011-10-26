require 'test/unit'
require 'factory_randomizer'

class RandomizerTest < Test::Unit::TestCase
  def test_random_first_name
    assert_not_nil Randomizer.first_name
  end
  
  def test_random_surname
    assert_not_nil Randomizer.surname
  end
  
  def test_random_full_name
    assert_not_nil Randomizer.full_name
  end
end