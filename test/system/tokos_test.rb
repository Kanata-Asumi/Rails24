require "application_system_test_case"

class TokosTest < ApplicationSystemTestCase
  setup do
    @toko = tokos(:one)
  end

  test "visiting the index" do
    visit tokos_url
    assert_selector "h1", text: "Tokos"
  end

  test "should create toko" do
    visit tokos_url
    click_on "New toko"

    fill_in "Hobby", with: @toko.hobby
    fill_in "Toko", with: @toko.toko
    click_on "Create Toko"

    assert_text "Toko was successfully created"
    click_on "Back"
  end

  test "should update Toko" do
    visit toko_url(@toko)
    click_on "Edit this toko", match: :first

    fill_in "Hobby", with: @toko.hobby
    fill_in "Toko", with: @toko.toko
    click_on "Update Toko"

    assert_text "Toko was successfully updated"
    click_on "Back"
  end

  test "should destroy Toko" do
    visit toko_url(@toko)
    click_on "Destroy this toko", match: :first

    assert_text "Toko was successfully destroyed"
  end
end
