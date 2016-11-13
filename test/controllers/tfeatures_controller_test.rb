require 'test_helper'

class TfeaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tfeature = tfeatures(:one)
  end

  test "should get index" do
    get tfeatures_url, as: :json
    assert_response :success
  end

  test "should create tfeature" do
    assert_difference('Tfeature.count') do
      post tfeatures_url, params: { tfeature: { feature_id: @tfeature.feature_id, name: @tfeature.name } }, as: :json
    end

    assert_response 201
  end

  test "should show tfeature" do
    get tfeature_url(@tfeature), as: :json
    assert_response :success
  end

  test "should update tfeature" do
    patch tfeature_url(@tfeature), params: { tfeature: { feature_id: @tfeature.feature_id, name: @tfeature.name } }, as: :json
    assert_response 200
  end

  test "should destroy tfeature" do
    assert_difference('Tfeature.count', -1) do
      delete tfeature_url(@tfeature), as: :json
    end

    assert_response 204
  end
end
