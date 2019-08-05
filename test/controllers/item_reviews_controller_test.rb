require 'test_helper'

class ItemReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_review = item_reviews(:one)
  end

  test "should get index" do
    get item_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_item_review_url
    assert_response :success
  end

  test "should create item_review" do
    assert_difference('ItemReview.count') do
      post item_reviews_url, params: { item_review: { item_id: @item_review.item_id, message: @item_review.message } }
    end

    assert_redirected_to item_review_url(ItemReview.last)
  end

  test "should show item_review" do
    get item_review_url(@item_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_review_url(@item_review)
    assert_response :success
  end

  test "should update item_review" do
    patch item_review_url(@item_review), params: { item_review: { item_id: @item_review.item_id, message: @item_review.message } }
    assert_redirected_to item_review_url(@item_review)
  end

  test "should destroy item_review" do
    assert_difference('ItemReview.count', -1) do
      delete item_review_url(@item_review)
    end

    assert_redirected_to item_reviews_url
  end
end
