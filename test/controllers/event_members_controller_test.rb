require "test_helper"

class EventMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_member = event_members(:one)
  end

  test "should get index" do
    get event_members_url, as: :json
    assert_response :success
  end

  test "should create event_member" do
    assert_difference("EventMember.count") do
      post event_members_url, params: { event_member: { event_id: @event_member.event_id, member_id: @event_member.member_id, presented: @event_member.presented } }, as: :json
    end

    assert_response :created
  end

  test "should show event_member" do
    get event_member_url(@event_member), as: :json
    assert_response :success
  end

  test "should update event_member" do
    patch event_member_url(@event_member), params: { event_member: { event_id: @event_member.event_id, member_id: @event_member.member_id, presented: @event_member.presented } }, as: :json
    assert_response :success
  end

  test "should destroy event_member" do
    assert_difference("EventMember.count", -1) do
      delete event_member_url(@event_member), as: :json
    end

    assert_response :no_content
  end
end
