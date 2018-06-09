require 'test_helper'

class LatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @late = lates(:one)
  end

  test "should get index" do
    get lates_url
    assert_response :success
  end

  test "should get new" do
    get new_late_url
    assert_response :success
  end

  test "should create late" do
    assert_difference('Late.count') do
      post lates_url, params: { late: { date: @late.date, impediment: @late.impediment, schedule: @late.schedule } }
    end

    assert_redirected_to late_url(Late.last)
  end

  test "should show late" do
    get late_url(@late)
    assert_response :success
  end

  test "should get edit" do
    get edit_late_url(@late)
    assert_response :success
  end

  test "should update late" do
    patch late_url(@late), params: { late: { date: @late.date, impediment: @late.impediment, schedule: @late.schedule } }
    assert_redirected_to late_url(@late)
  end

  test "should destroy late" do
    assert_difference('Late.count', -1) do
      delete late_url(@late)
    end

    assert_redirected_to lates_url
  end
end
