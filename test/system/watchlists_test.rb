require "application_system_test_case"

class WatchlistsTest < ApplicationSystemTestCase
  setup do
    @watchlist = watchlists(:one)
  end

  test "visiting the index" do
    visit watchlists_url
    assert_selector "h1", text: "Watchlists"
  end

  test "creating a Watchlist" do
    visit watchlists_url
    click_on "New Watchlist"

    fill_in "User", with: @watchlist.user_id
    click_on "Create Watchlist"

    assert_text "Watchlist was successfully created"
    click_on "Back"
  end

  test "updating a Watchlist" do
    visit watchlists_url
    click_on "Edit", match: :first

    fill_in "User", with: @watchlist.user_id
    click_on "Update Watchlist"

    assert_text "Watchlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Watchlist" do
    visit watchlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watchlist was successfully destroyed"
  end
end
