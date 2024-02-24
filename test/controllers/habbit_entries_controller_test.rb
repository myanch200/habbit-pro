require "test_helper"

class HabbitEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habbit_entry = habbit_entries(:one)
  end

  test "should get index" do
    get habbit_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_habbit_entry_url
    assert_response :success
  end

  test "should create habbit_entry" do
    assert_difference("HabbitEntry.count") do
      post habbit_entries_url, params: { habbit_entry: { name: @habbit_entry.name, occurrence: @habbit_entry.occurrence, status: @habbit_entry.status } }
    end

    assert_redirected_to habbit_entry_url(HabbitEntry.last)
  end

  test "should show habbit_entry" do
    get habbit_entry_url(@habbit_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_habbit_entry_url(@habbit_entry)
    assert_response :success
  end

  test "should update habbit_entry" do
    patch habbit_entry_url(@habbit_entry), params: { habbit_entry: { name: @habbit_entry.name, occurrence: @habbit_entry.occurrence, status: @habbit_entry.status } }
    assert_redirected_to habbit_entry_url(@habbit_entry)
  end

  test "should destroy habbit_entry" do
    assert_difference("HabbitEntry.count", -1) do
      delete habbit_entry_url(@habbit_entry)
    end

    assert_redirected_to habbit_entries_url
  end
end
