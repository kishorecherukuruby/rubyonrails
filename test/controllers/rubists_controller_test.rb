require 'test_helper'

class RubistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubist = rubists(:one)
  end

  test "should get index" do
    get rubists_url
    assert_response :success
  end

  test "should get new" do
    get new_rubist_url
    assert_response :success
  end

  test "should create rubist" do
    assert_difference('Rubist.count') do
      post rubists_url, params: { rubist: { age: @rubist.age, dob: @rubist.dob, email: @rubist.email, experience: @rubist.experience, name: @rubist.name } }
    end

    assert_redirected_to rubist_url(Rubist.last)
  end

  test "should show rubist" do
    get rubist_url(@rubist)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubist_url(@rubist)
    assert_response :success
  end

  test "should update rubist" do
    patch rubist_url(@rubist), params: { rubist: { age: @rubist.age, dob: @rubist.dob, email: @rubist.email, experience: @rubist.experience, name: @rubist.name } }
    assert_redirected_to rubist_url(@rubist)
  end

  test "should destroy rubist" do
    assert_difference('Rubist.count', -1) do
      delete rubist_url(@rubist)
    end

    assert_redirected_to rubists_url
  end
end
