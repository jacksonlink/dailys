require "application_system_test_case"

class LatesTest < ApplicationSystemTestCase
  setup do
    @late = lates(:one)
  end

  test "visiting the index" do
    visit lates_url
    assert_selector "h1", text: "Lates"
  end

  test "creating a Late" do
    visit lates_url
    click_on "New Late"

    fill_in "Date", with: @late.date
    fill_in "Impediment", with: @late.impediment
    fill_in "Schedule", with: @late.schedule
    click_on "Create Late"

    assert_text "Late was successfully created"
    click_on "Back"
  end

  test "updating a Late" do
    visit lates_url
    click_on "Edit", match: :first

    fill_in "Date", with: @late.date
    fill_in "Impediment", with: @late.impediment
    fill_in "Schedule", with: @late.schedule
    click_on "Update Late"

    assert_text "Late was successfully updated"
    click_on "Back"
  end

  test "destroying a Late" do
    visit lates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Late was successfully destroyed"
  end
end
