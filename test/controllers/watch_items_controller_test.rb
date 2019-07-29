require 'test_helper'

class WatchItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watch_item = watch_items(:one)
  end

  test "should get index" do
    get watch_items_url
    assert_response :success
  end

  test "should get new" do
    get new_watch_item_url
    assert_response :success
  end

  test "should create watch_item" do
    assert_difference('WatchItem.count') do
      post watch_items_url, params: { watch_item: { item_id: @watch_item.item_id, watchlist_id: @watch_item.watchlist_id } }
    end

    assert_redirected_to watch_item_url(WatchItem.last)
  end

  test "should show watch_item" do
    get watch_item_url(@watch_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_watch_item_url(@watch_item)
    assert_response :success
  end

  test "should update watch_item" do
    patch watch_item_url(@watch_item), params: { watch_item: { item_id: @watch_item.item_id, watchlist_id: @watch_item.watchlist_id } }
    assert_redirected_to watch_item_url(@watch_item)
  end

  test "should destroy watch_item" do
    assert_difference('WatchItem.count', -1) do
      delete watch_item_url(@watch_item)
    end

    assert_redirected_to watch_items_url
  end
end
