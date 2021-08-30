require "test_helper"

class GraveyardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graveyard = graveyards(:one)
  end

  test "should get index" do
    get graveyards_url, as: :json
    assert_response :success
  end

  test "should create graveyard" do
    assert_difference('Graveyard.count') do
      post graveyards_url, params: { graveyard: { name: @graveyard.name, trainer_id: @graveyard.trainer_id, user_id: @graveyard.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show graveyard" do
    get graveyard_url(@graveyard), as: :json
    assert_response :success
  end

  test "should update graveyard" do
    patch graveyard_url(@graveyard), params: { graveyard: { name: @graveyard.name, trainer_id: @graveyard.trainer_id, user_id: @graveyard.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy graveyard" do
    assert_difference('Graveyard.count', -1) do
      delete graveyard_url(@graveyard), as: :json
    end

    assert_response 204
  end
end
