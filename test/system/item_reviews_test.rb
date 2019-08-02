require "application_system_test_case"

class ItemReviewsTest < ApplicationSystemTestCase
  setup do
    @item_review = item_reviews(:one)
  end

  test "visiting the index" do
    visit item_reviews_url
    assert_selector "h1", text: "Item Reviews"
  end

  test "creating a Item review" do
    visit item_reviews_url
    click_on "New Item Review"

    fill_in "Item", with: @item_review.item_id
    fill_in "Message", with: @item_review.message
    click_on "Create Item review"

    assert_text "Item review was successfully created"
    click_on "Back"
  end

  test "updating a Item review" do
    visit item_reviews_url
    click_on "Edit", match: :first

    fill_in "Item", with: @item_review.item_id
    fill_in "Message", with: @item_review.message
    click_on "Update Item review"

    assert_text "Item review was successfully updated"
    click_on "Back"
  end

  test "destroying a Item review" do
    visit item_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item review was successfully destroyed"
  end
end
