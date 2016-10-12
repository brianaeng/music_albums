require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "An Album must have a name and artist" do
    assert albums(:slippery_when_wet).valid? "An album needs a name and artist"

    #also test for when it's not valid, ex: field is missing
    albums(:slippery_when_wet).name = nil
    assert_not albums(:slippery_when_wet).valid? "An album needs a name and artist"
  end

  test "Slippery When Wet was by Bon Jovi" do
    assert_equal albums(:slippery_when_wet).artist, artists(:bonjovi)
  end

end
