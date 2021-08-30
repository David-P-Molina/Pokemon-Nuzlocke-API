require "test_helper"

class TeammatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teammate = teammates(:one)
  end

  test "should get index" do
    get teammates_url, as: :json
    assert_response :success
  end

  test "should create teammate" do
    assert_difference('Teammate.count') do
      post teammates_url, params: { teammate: { alive: @teammate.alive, location_caught: @teammate.location_caught, nickname: @teammate.nickname, notes: @teammate.notes, pokemon_id: @teammate.pokemon_id, trainer_id: @teammate.trainer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show teammate" do
    get teammate_url(@teammate), as: :json
    assert_response :success
  end

  test "should update teammate" do
    patch teammate_url(@teammate), params: { teammate: { alive: @teammate.alive, location_caught: @teammate.location_caught, nickname: @teammate.nickname, notes: @teammate.notes, pokemon_id: @teammate.pokemon_id, trainer_id: @teammate.trainer_id } }, as: :json
    assert_response 200
  end

  test "should destroy teammate" do
    assert_difference('Teammate.count', -1) do
      delete teammate_url(@teammate), as: :json
    end

    assert_response 204
  end
end
