require "test_helper"

class SamuraisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @samurai = samurais(:one)
  end

  test "should get index" do
    get samurais_url
    assert_response :success
  end

  test "should get new" do
    get new_samurai_url
    assert_response :success
  end

  test "should create samurai" do
    assert_difference("Samurai.count") do
      post samurais_url, params: { samurai: { checkbox: @samurai.checkbox, ingredients: @samurai.ingredients, name: @samurai.name } }
    end

    assert_redirected_to samurai_url(Samurai.last)
  end

  test "should show samurai" do
    get samurai_url(@samurai)
    assert_response :success
  end

  test "should get edit" do
    get edit_samurai_url(@samurai)
    assert_response :success
  end

  test "should update samurai" do
    patch samurai_url(@samurai), params: { samurai: { checkbox: @samurai.checkbox, ingredients: @samurai.ingredients, name: @samurai.name } }
    assert_redirected_to samurai_url(@samurai)
  end

  test "should destroy samurai" do
    assert_difference("Samurai.count", -1) do
      delete samurai_url(@samurai)
    end

    assert_redirected_to samurais_url
  end
end
