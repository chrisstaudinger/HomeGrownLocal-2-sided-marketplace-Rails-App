require "application_system_test_case"

class UserRatingsTest < ApplicationSystemTestCase
  setup do
    @user_rating = user_ratings(:one)
  end

  test "visiting the index" do
    visit user_ratings_url
    assert_selector "h1", text: "User Ratings"
  end

  test "creating a User rating" do
    visit user_ratings_url
    click_on "New User Rating"

    fill_in "Rating", with: @user_rating.rating
    fill_in "Reviewee", with: @user_rating.reviewee_id
    fill_in "Reviewer", with: @user_rating.reviewer_id
    click_on "Create User rating"

    assert_text "User rating was successfully created"
    click_on "Back"
  end

  test "updating a User rating" do
    visit user_ratings_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @user_rating.rating
    fill_in "Reviewee", with: @user_rating.reviewee_id
    fill_in "Reviewer", with: @user_rating.reviewer_id
    click_on "Update User rating"

    assert_text "User rating was successfully updated"
    click_on "Back"
  end

  test "destroying a User rating" do
    visit user_ratings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User rating was successfully destroyed"
  end
end
