require "test_helper"

class TokosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toko = tokos(:one)
  end

  test "should get index" do
    get tokos_url
    assert_response :success
  end

  test "should get new" do
    get new_toko_url
    assert_response :success
  end

  test "should create toko" do
    assert_difference("Toko.count") do
      post tokos_url, params: { toko: { hobby: @toko.hobby, toko: @toko.toko } }
    end

    assert_redirected_to toko_url(Toko.last)
  end

  test "should show toko" do
    get toko_url(@toko)
    assert_response :success
  end

  test "should get edit" do
    get edit_toko_url(@toko)
    assert_response :success
  end

  test "should update toko" do
    patch toko_url(@toko), params: { toko: { hobby: @toko.hobby, toko: @toko.toko } }
    assert_redirected_to toko_url(@toko)
  end

  test "should destroy toko" do
    assert_difference("Toko.count", -1) do
      delete toko_url(@toko)
    end

    assert_redirected_to tokos_url
  end
end
