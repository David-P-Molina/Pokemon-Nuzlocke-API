require "test_helper"

class GenerationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generation = generations(:one)
  end

  test "should get index" do
    get generations_url, as: :json
    assert_response :success
  end

  test "should create generation" do
    assert_difference('Generation.count') do
      post generations_url, params: { generation: { region_name: @generation.region_name } }, as: :json
    end

    assert_response 201
  end

  test "should show generation" do
    get generation_url(@generation), as: :json
    assert_response :success
  end

  test "should update generation" do
    patch generation_url(@generation), params: { generation: { region_name: @generation.region_name } }, as: :json
    assert_response 200
  end

  test "should destroy generation" do
    assert_difference('Generation.count', -1) do
      delete generation_url(@generation), as: :json
    end

    assert_response 204
  end
end
