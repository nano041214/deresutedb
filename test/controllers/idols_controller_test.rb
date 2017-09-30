require 'test_helper'

class IdolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idol = idols(:one)
  end

  test "should get index" do
    get idols_url
    assert_response :success
  end

  test "should get new" do
    get new_idol_url
    assert_response :success
  end

  test "should create idol" do
    assert_difference('Idol.count') do
      post idols_url, params: { idol: { image: @idol.image, name: @idol.name, yomigana: @idol.yomigana } }
    end

    assert_redirected_to idol_url(Idol.last)
  end

  test "should show idol" do
    get idol_url(@idol)
    assert_response :success
  end

  test "should get edit" do
    get edit_idol_url(@idol)
    assert_response :success
  end

  test "should update idol" do
    patch idol_url(@idol), params: { idol: { image: @idol.image, name: @idol.name, yomigana: @idol.yomigana } }
    assert_redirected_to idol_url(@idol)
  end

  test "should destroy idol" do
    assert_difference('Idol.count', -1) do
      delete idol_url(@idol)
    end

    assert_redirected_to idols_url
  end
end
