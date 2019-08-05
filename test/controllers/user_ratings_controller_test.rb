require 'test_helper'

class UserRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_rating = user_ratings(:one)
  end

  test "should get index" do
    get user_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_rating_url
    assert_response :success
  end

  test "should create user_rating" do
    assert_difference('UserRating.count') do
      post user_ratings_url, params: { user_rating: { rating: @user_rating.rating, reviewee_id: @user_rating.reviewee_id, reviewer_id: @user_rating.reviewer_id } }
    end

    assert_redirected_to user_rating_url(UserRating.last)
  end

  test "should show user_rating" do
    get user_rating_url(@user_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_rating_url(@user_rating)
    assert_response :success
  end

  test "should update user_rating" do
    patch user_rating_url(@user_rating), params: { user_rating: { rating: @user_rating.rating, reviewee_id: @user_rating.reviewee_id, reviewer_id: @user_rating.reviewer_id } }
    assert_redirected_to user_rating_url(@user_rating)
  end

  test "should destroy user_rating" do
    assert_difference('UserRating.count', -1) do
      delete user_rating_url(@user_rating)
    end

    assert_redirected_to user_ratings_url
  end
end
