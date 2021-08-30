require "test_helper"

class GravestonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gravestone = gravestones(:one)
  end

  test "should get index" do
    get gravestones_url, as: :json
    assert_response :success
  end

  test "should create gravestone" do
    assert_difference('Gravestone.count') do
      post gravestones_url, params: { gravestone: { death: @gravestone.death, level: @gravestone.level, notes: @gravestone.notes, nuzlocke_id: @gravestone.nuzlocke_id, teammate_id: @gravestone.teammate_id, trainer_id: @gravestone.trainer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show gravestone" do
    get gravestone_url(@gravestone), as: :json
    assert_response :success
  end

  test "should update gravestone" do
    patch gravestone_url(@gravestone), params: { gravestone: { death: @gravestone.death, level: @gravestone.level, notes: @gravestone.notes, nuzlocke_id: @gravestone.nuzlocke_id, teammate_id: @gravestone.teammate_id, trainer_id: @gravestone.trainer_id } }, as: :json
    assert_response 200
  end

  test "should destroy gravestone" do
    assert_difference('Gravestone.count', -1) do
      delete gravestone_url(@gravestone), as: :json
    end

    assert_response 204
  end
end
