# frozen_string_literal: true

require "test_helper"

class DeepthoughtTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Deepthought::VERSION
  end
  def test_type_obj
    assert_equal Deepthought,
      Deepthought.new.class
  end

  def test_respond
    assert_equal "42",
      Deepthought.respond("The Ultimate Question of Life, the Universe and Everything")
  end

  def test_notrespond
    assert_equal "Mmmm i'm bored",
      Deepthought.respond("Mmmm i'm bored")
  end
end
