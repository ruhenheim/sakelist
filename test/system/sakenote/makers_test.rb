require "application_system_test_case"

class Sakenote::MakersTest < ApplicationSystemTestCase
  setup do
    @sakenote_maker = sakenote_makers(:one)
  end

  test "visiting the index" do
    visit sakenote_makers_url
    assert_selector "h1", text: "Sakenote/Makers"
  end

  test "creating a Maker" do
    visit sakenote_makers_url
    click_on "New Sakenote/Maker"

    click_on "Create Maker"

    assert_text "Maker was successfully created"
    click_on "Back"
  end

  test "updating a Maker" do
    visit sakenote_makers_url
    click_on "Edit", match: :first

    click_on "Update Maker"

    assert_text "Maker was successfully updated"
    click_on "Back"
  end

  test "destroying a Maker" do
    visit sakenote_makers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maker was successfully destroyed"
  end
end
