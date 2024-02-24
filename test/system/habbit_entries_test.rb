require "application_system_test_case"

class HabbitEntriesTest < ApplicationSystemTestCase
  setup do
    @habbit_entry = habbit_entries(:one)
  end

  test "visiting the index" do
    visit habbit_entries_url
    assert_selector "h1", text: "Habbit entries"
  end

  test "should create habbit entry" do
    visit habbit_entries_url
    click_on "New habbit entry"

    fill_in "Name", with: @habbit_entry.name
    fill_in "Occurrence", with: @habbit_entry.occurrence
    fill_in "Status", with: @habbit_entry.status
    click_on "Create Habbit entry"

    assert_text "Habbit entry was successfully created"
    click_on "Back"
  end

  test "should update Habbit entry" do
    visit habbit_entry_url(@habbit_entry)
    click_on "Edit this habbit entry", match: :first

    fill_in "Name", with: @habbit_entry.name
    fill_in "Occurrence", with: @habbit_entry.occurrence
    fill_in "Status", with: @habbit_entry.status
    click_on "Update Habbit entry"

    assert_text "Habbit entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Habbit entry" do
    visit habbit_entry_url(@habbit_entry)
    click_on "Destroy this habbit entry", match: :first

    assert_text "Habbit entry was successfully destroyed"
  end
end
