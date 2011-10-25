require 'test/unit'
require 'randomizer'

class RandomizerTest < Test::Unit::TestCase
  def test_random_email
    assert_not_nil Randomizer.email
  end
    
  def test_random_email_with_name
    assert_not_nil Randomizer.email_with_name
  end
end