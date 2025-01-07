require "application_system_test_case"

class SamuraisTest < ApplicationSystemTestCase
  setup do
    @samurai = samurais(:one)
  end

  test "visiting the index" do
    visit samurais_url
    assert_selector "h1", text: "Samurais"
  end

  test "should create samurai" do
    visit samurais_url
    click_on "New samurai"

    check "Checkbox" if @samurai.checkbox
    fill_in "Ingredients", with: @samurai.ingredients
    fill_in "Name", with: @samurai.name
    click_on "Create Samurai"

    assert_text "Samurai was successfully created"
    click_on "Back"
  end

  test "should update Samurai" do
    visit samurai_url(@samurai)
    click_on "Edit this samurai", match: :first

    check "Checkbox" if @samurai.checkbox
    fill_in "Ingredients", with: @samurai.ingredients
    fill_in "Name", with: @samurai.name
    click_on "Update Samurai"

    assert_text "Samurai was successfully updated"
    click_on "Back"
  end

  test "should destroy Samurai" do
    visit samurai_url(@samurai)
    click_on "Destroy this samurai", match: :first

    assert_text "Samurai was successfully destroyed"
  end
end
