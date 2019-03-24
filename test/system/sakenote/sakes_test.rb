require "application_system_test_case"

class Sakenote::SakesTest < ApplicationSystemTestCase
  setup do
    @sakenote_sake = sakenote_sakes(:one)
  end

  test "visiting the index" do
    visit sakenote_sakes_url
    assert_selector "h1", text: "Sakenote/Sakes"
  end

  test "creating a Sake" do
    visit sakenote_sakes_url
    click_on "New Sakenote/Sake"

    click_on "Create Sake"

    assert_text "Sake was successfully created"
    click_on "Back"
  end

  test "updating a Sake" do
    visit sakenote_sakes_url
    click_on "Edit", match: :first

    click_on "Update Sake"

    assert_text "Sake was successfully updated"
    click_on "Back"
  end

  test "destroying a Sake" do
    visit sakenote_sakes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sake was successfully destroyed"
  end
end
