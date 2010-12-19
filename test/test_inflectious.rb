require 'helper'

class TestInflectious < Test::Unit::TestCase
  should "gerundize regular word" do
    assert_equal ActiveSupport::Inflector.gerundize("walk"), "walking"
  end
  should "gerundize word ending with a vowel" do
    assert_equal ActiveSupport::Inflector.gerundize("grate"), "grating"
  end
  should "gerundize word ending with vowel consonant" do
    assert_equal ActiveSupport::Inflector.gerundize("sit"), "sitting"
  end
  should "gerundize word ending with vowel vowel consonant" do
    assert_equal ActiveSupport::Inflector.gerundize("greet"), "greeting"
  end
end
