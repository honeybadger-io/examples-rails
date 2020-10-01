require "application_system_test_case"

class SmokeTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    assert_selector "a", text: "RuntimeError"
  end
end
