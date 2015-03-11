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
      post :create, pitch_event: {city: @pitch_event.city, contact_email: @pitch_event.contact_email, contact_name: @pitch_event.contact_name, contact_number: @pitch_event.contact_number, detail_link: @pitch_event.detail_link, ethnic: @pitch_event.ethnic, event_end: @pitch_event.event_end, event_name: @pitch_event.event_name, event_start: @pitch_event.event_start, industry: @pitch_event.industry, location: @pitch_event.location, org_name: @pitch_event.org_name, registration_deadline: @pitch_event.registration_deadline, state: @pitch_event.state, woman: @pitch_event.woman}
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
    patch :update, id: @pitch_event, pitch_event: {city: @pitch_event.city, contact_email: @pitch_event.contact_email, contact_name: @pitch_event.contact_name, contact_number: @pitch_event.contact_number, detail_link: @pitch_event.detail_link, ethnic: @pitch_event.ethnic, event_end: @pitch_event.event_end, event_name: @pitch_event.event_name, event_start: @pitch_event.event_start, industry: @pitch_event.industry, location: @pitch_event.location, org_name: @pitch_event.org_name, registration_deadline: @pitch_event.registration_deadline, state: @pitch_event.state, woman: @pitch_event.woman}
    assert_redirected_to pitch_event_path(assigns(:pitch_event))
  end

  test "should destroy pitch_event" do
    assert_difference('PitchEvent.count', -1) do
      delete :destroy, id: @pitch_event
    end

    assert_redirected_to pitch_events_path
  end
end
