require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { baptism_date: @member.baptism_date, church_name: @member.church_name, date_of_birth: @member.date_of_birth, gender: @member.gender, marriage_status: @member.marriage_status, member_email_id: @member.member_email_id, member_id: @member.member_id, member_name: @member.member_name, member_phone_no: @member.member_phone_no, profession: @member.profession, sub_id: @member.sub_id, subchurch_name: @member.subchurch_name }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { baptism_date: @member.baptism_date, church_name: @member.church_name, date_of_birth: @member.date_of_birth, gender: @member.gender, marriage_status: @member.marriage_status, member_email_id: @member.member_email_id, member_id: @member.member_id, member_name: @member.member_name, member_phone_no: @member.member_phone_no, profession: @member.profession, sub_id: @member.sub_id, subchurch_name: @member.subchurch_name }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
