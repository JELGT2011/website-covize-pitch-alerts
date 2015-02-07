require 'test_helper'

class PitchEventsControllerTest < ActionController::TestCase
  setup do
    @pitch_event = pitch_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitch_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitch_event" do
    assert_difference('PitchEvent.count') do
      post :create, pitch_event: { description: @pitch_event.description, host: @pitch_event.host, image: @pitch_event.image, title: @pitch_event.title }
    end

    assert_redirected_to pitch_event_path(assigns(:pitch_event))
  end

  test "should show pitch_event" do
    get :show, id: @pitch_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pitch_event
    assert_response :success
  end

  test "should update pitch_event" do
    patch :update, id: @pitch_event, pitch_event: { description: @pitch_event.description, host: @pitch_event.host, image: @pitch_event.image, title: @pitch_event.title }
    assert_redirected_to pitch_event_path(assigns(:pitch_event))
  end

  test "should destroy pitch_event" do
    assert_difference('PitchEvent.count', -1) do
      delete :destroy, id: @pitch_event
    end

    assert_redirected_to pitch_events_path
  end
end
