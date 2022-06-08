require "application_system_test_case"

class DostsTest < ApplicationSystemTestCase
  setup do
    @dost = dosts(:one)
  end

  test "visiting the index" do
    visit dosts_url
    assert_selector "h1", text: "Dosts"
  end

  test "creating a Dost" do
    visit dosts_url
    click_on "New Dost"

    fill_in "Email", with: @dost.email
    fill_in "First name", with: @dost.first_name
    fill_in "Last name", with: @dost.last_name
    fill_in "Phone", with: @dost.phone
    fill_in "Twitter", with: @dost.twitter
    click_on "Create Dost"

    assert_text "Dost was successfully created"
    click_on "Back"
  end

  test "updating a Dost" do
    visit dosts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @dost.email
    fill_in "First name", with: @dost.first_name
    fill_in "Last name", with: @dost.last_name
    fill_in "Phone", with: @dost.phone
    fill_in "Twitter", with: @dost.twitter
    click_on "Update Dost"

    assert_text "Dost was successfully updated"
    click_on "Back"
  end

  test "destroying a Dost" do
    visit dosts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dost was successfully destroyed"
  end
end
