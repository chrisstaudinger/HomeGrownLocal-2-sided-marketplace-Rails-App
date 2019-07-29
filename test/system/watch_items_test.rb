require "application_system_test_case"

class WatchItemsTest < ApplicationSystemTestCase
  setup do
    @watch_item = watch_items(:one)
  end

  test "visiting the index" do
    visit watch_items_url
    assert_selector "h1", text: "Watch Items"
  end

  test "creating a Watch item" do
    visit watch_items_url
    click_on "New Watch Item"

    fill_in "Item", with: @watch_item.item_id
    fill_in "Watchlist", with: @watch_item.watchlist_id
    click_on "Create Watch item"

    assert_text "Watch item was successfully created"
    click_on "Back"
  end

  test "updating a Watch item" do
    visit watch_items_url
    click_on "Edit", match: :first

    fill_in "Item", with: @watch_item.item_id
    fill_in "Watchlist", with: @watch_item.watchlist_id
    click_on "Update Watch item"

    assert_text "Watch item was successfully updated"
    click_on "Back"
  end

  test "destroying a Watch item" do
    visit watch_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watch item was successfully destroyed"
  end
end
