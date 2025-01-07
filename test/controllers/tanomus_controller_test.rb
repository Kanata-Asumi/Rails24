require "test_helper"

class TanomusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tanomu = tanomus(:one)
  end

  test "should get index" do
    get tanomus_url
    assert_response :success
  end

  test "should get new" do
    get new_tanomu_url
    assert_response :success
  end

  test "should create tanomu" do
    assert_difference("Tanomu.count") do
      post tanomus_url, params: { tanomu: { category: @tanomu.category, content: @tanomu.content, photo: @tanomu.photo, time: @tanomu.time, userid: @tanomu.userid, username: @tanomu.username } }
    end

    assert_redirected_to tanomu_url(Tanomu.last)
  end

  test "should show tanomu" do
    get tanomu_url(@tanomu)
    assert_response :success
  end

  test "should get edit" do
    get edit_tanomu_url(@tanomu)
    assert_response :success
  end

  test "should update tanomu" do
    patch tanomu_url(@tanomu), params: { tanomu: { category: @tanomu.category, content: @tanomu.content, photo: @tanomu.photo, time: @tanomu.time, userid: @tanomu.userid, username: @tanomu.username } }
    assert_redirected_to tanomu_url(@tanomu)
  end

  test "should destroy tanomu" do
    assert_difference("Tanomu.count", -1) do
      delete tanomu_url(@tanomu)
    end

    assert_redirected_to tanomus_url
  end
end
