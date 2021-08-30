require "test_helper"

class TrainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainer = trainers(:one)
  end

  test "should get index" do
    get trainers_url, as: :json
    assert_response :success
  end

  test "should create trainer" do
    assert_difference('Trainer.count') do
      post trainers_url, params: { trainer: { gym_badge: @trainer.gym_badge, name: @trainer.name, pokemon_caught: @trainer.pokemon_caught, pokemon_seen: @trainer.pokemon_seen, region: @trainer.region, trainer_id_number: @trainer.trainer_id_number } }, as: :json
    end

    assert_response 201
  end

  test "should show trainer" do
    get trainer_url(@trainer), as: :json
    assert_response :success
  end

  test "should update trainer" do
    patch trainer_url(@trainer), params: { trainer: { gym_badge: @trainer.gym_badge, name: @trainer.name, pokemon_caught: @trainer.pokemon_caught, pokemon_seen: @trainer.pokemon_seen, region: @trainer.region, trainer_id_number: @trainer.trainer_id_number } }, as: :json
    assert_response 200
  end

  test "should destroy trainer" do
    assert_difference('Trainer.count', -1) do
      delete trainer_url(@trainer), as: :json
    end

    assert_response 204
  end
end
