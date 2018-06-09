require 'test_helper'

class EarliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @early = earlies(:one)
  end

  test "should get index" do
    get earlies_url
    assert_response :success
  end

  test "should get new" do
    get new_early_url
    assert_response :success
  end

  test "should create early" do
    assert_difference('Early.count') do
      post earlies_url, params: { early: { date: @early.date, impediment: @early.impediment, schedule: @early.schedule } }
    end

    assert_redirected_to early_url(Early.last)
  end

  test "should show early" do
    get early_url(@early)
    assert_response :success
  end

  test "should get edit" do
    get edit_early_url(@early)
    assert_response :success
  end

  test "should update early" do
    patch early_url(@early), params: { early: { date: @early.date, impediment: @early.impediment, schedule: @early.schedule } }
    assert_redirected_to early_url(@early)
  end

  test "should destroy early" do
    assert_difference('Early.count', -1) do
      delete early_url(@early)
    end

    assert_redirected_to earlies_url
  end
end
