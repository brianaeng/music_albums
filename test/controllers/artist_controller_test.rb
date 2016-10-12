require 'test_helper'

class ArtistControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: artists(:bonjovi).id }
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, {id: 1 }
    assert_response :success
  end

  test "should be able to create" do
    post_params = {artist: {name: "Regina Spektor"}}
    post :create, post_params
    assert_response :redirect
  end

  test "creating an artist changes the number of artists" do
    assert_difference('Artist.count', 1) do
      post_params = {artist: {name: "Regina Spektor"}}
      post :create, post_params
    end
  end

  test "should be able to update" do
    patch :update, {id: 1 }
    assert_response :success
  end

  test "should be able to delete" do
    delete :destroy, {id: artists(:redhotchillipeppers).id}
    assert_response :redirect
  end

  test "should be able to delete and update count" do
    assert_difference('Artist.count', -1) do
      delete :destroy, {id: artists(:redhotchillipeppers).id}
      assert_response :redirect
    end
  end

  # test "should be able to delete" do
    #what happens when you try to delete something that's not there?
  # end

end
