require 'test/unit'
require 'randomizer'

class RandomizerTest < Test::Unit::TestCase
  def test_random_password
    assert_not_nil Randomizer.password
  end
  
  def test_random_password_with_length
    (1..10).each do |length|
      assert_equal Randomizer.password(:length => length).length, length
    end
  end
end