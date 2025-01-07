require "application_system_test_case"

class TanomusTest < ApplicationSystemTestCase
  setup do
    @tanomu = tanomus(:one)
  end

  test "visiting the index" do
    visit tanomus_url
    assert_selector "h1", text: "Tanomus"
  end

  test "should create tanomu" do
    visit tanomus_url
    click_on "New tanomu"

    fill_in "Category", with: @tanomu.category
    fill_in "Content", with: @tanomu.content
    fill_in "Photo", with: @tanomu.photo
    fill_in "Time", with: @tanomu.time
    fill_in "Userid", with: @tanomu.userid
    fill_in "Username", with: @tanomu.username
    click_on "Create Tanomu"

    assert_text "Tanomu was successfully created"
    click_on "Back"
  end

  test "should update Tanomu" do
    visit tanomu_url(@tanomu)
    click_on "Edit this tanomu", match: :first

    fill_in "Category", with: @tanomu.category
    fill_in "Content", with: @tanomu.content
    fill_in "Photo", with: @tanomu.photo
    fill_in "Time", with: @tanomu.time
    fill_in "Userid", with: @tanomu.userid
    fill_in "Username", with: @tanomu.username
    click_on "Update Tanomu"

    assert_text "Tanomu was successfully updated"
    click_on "Back"
  end

  test "should destroy Tanomu" do
    visit tanomu_url(@tanomu)
    click_on "Destroy this tanomu", match: :first

    assert_text "Tanomu was successfully destroyed"
  end
end
