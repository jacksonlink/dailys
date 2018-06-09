require "application_system_test_case"

class EarliesTest < ApplicationSystemTestCase
  setup do
    @early = earlies(:one)
  end

  test "visiting the index" do
    visit earlies_url
    assert_selector "h1", text: "Earlies"
  end

  test "creating a Early" do
    visit earlies_url
    click_on "New Early"

    fill_in "Date", with: @early.date
    fill_in "Impediment", with: @early.impediment
    fill_in "Schedule", with: @early.schedule
    click_on "Create Early"

    assert_text "Early was successfully created"
    click_on "Back"
  end

  test "updating a Early" do
    visit earlies_url
    click_on "Edit", match: :first

    fill_in "Date", with: @early.date
    fill_in "Impediment", with: @early.impediment
    fill_in "Schedule", with: @early.schedule
    click_on "Update Early"

    assert_text "Early was successfully updated"
    click_on "Back"
  end

  test "destroying a Early" do
    visit earlies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Early was successfully destroyed"
  end
end
