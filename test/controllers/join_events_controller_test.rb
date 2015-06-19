require 'test_helper'

class JoinEventsControllerTest < ActionController::TestCase
  setup do
    @join_event = join_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:join_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create join_event" do
    assert_difference('JoinEvent.count') do
      post :create, join_event: { comment: @join_event.comment, eventid: @join_event.eventid, status: @join_event.status, userid: @join_event.userid }
    end

    assert_redirected_to join_event_path(assigns(:join_event))
  end

  test "should show join_event" do
    get :show, id: @join_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @join_event
    assert_response :success
  end

  test "should update join_event" do
    patch :update, id: @join_event, join_event: { comment: @join_event.comment, eventid: @join_event.eventid, status: @join_event.status, userid: @join_event.userid }
    assert_redirected_to join_event_path(assigns(:join_event))
  end

  test "should destroy join_event" do
    assert_difference('JoinEvent.count', -1) do
      delete :destroy, id: @join_event
    end

    assert_redirected_to join_events_path
  end
end
