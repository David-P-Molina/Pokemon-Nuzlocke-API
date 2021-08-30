require "test_helper"

class NuzlockesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nuzlocke = nuzlockes(:one)
  end

  test "should get index" do
    get nuzlockes_url, as: :json
    assert_response :success
  end

  test "should create nuzlocke" do
    assert_difference('Nuzlocke.count') do
      post nuzlockes_url, params: { nuzlocke: { difficulty: @nuzlocke.difficulty, name: @nuzlocke.name } }, as: :json
    end

    assert_response 201
  end

  test "should show nuzlocke" do
    get nuzlocke_url(@nuzlocke), as: :json
    assert_response :success
  end

  test "should update nuzlocke" do
    patch nuzlocke_url(@nuzlocke), params: { nuzlocke: { difficulty: @nuzlocke.difficulty, name: @nuzlocke.name } }, as: :json
    assert_response 200
  end

  test "should destroy nuzlocke" do
    assert_difference('Nuzlocke.count', -1) do
      delete nuzlocke_url(@nuzlocke), as: :json
    end

    assert_response 204
  end
end
