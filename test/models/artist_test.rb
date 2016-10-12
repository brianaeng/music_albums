require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "An Artist must have a name" do
    red_hot_chilli_peppers = Artist.new

    #checking if the artist does NOT have name it is NOT valid
    assert_not red_hot_chilli_peppers.valid? "An Artist without a name is invalid."
    #adding name to make it valid
    red_hot_chilli_peppers.name = "Kanye"
    #checking if the artist does have a name it is valid
    assert red_hot_chilli_peppers.valid?  "Somehow Kanye is not a valid name."
  end

  test "An Artist must have a certain number of albums" do
    assert_equal artists(:bonjovi).albums.length, 2
    #use size instead of length? better for faster loading?
  end

  test "An Artist must have correct albums" do
    assert_includes artists(:bonjovi).albums, albums(:slippery_when_wet)
    assert_includes artists(:bonjovi).albums, albums(:bounce)
    #use size instead of length? better for faster loading?
  end

end
