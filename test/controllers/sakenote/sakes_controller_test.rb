require 'test_helper'

class Sakenote::SakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sakenote_sake = sakenote_sakes(:one)
  end

  test "should get index" do
    get sakenote_sakes_url
    assert_response :success
  end

  test "should get new" do
    get new_sakenote_sake_url
    assert_response :success
  end

  test "should create sakenote_sake" do
    assert_difference('Sakenote::Sake.count') do
      post sakenote_sakes_url, params: { sakenote_sake: {  } }
    end

    assert_redirected_to sakenote_sake_url(Sakenote::Sake.last)
  end

  test "should show sakenote_sake" do
    get sakenote_sake_url(@sakenote_sake)
    assert_response :success
  end

  test "should get edit" do
    get edit_sakenote_sake_url(@sakenote_sake)
    assert_response :success
  end

  test "should update sakenote_sake" do
    patch sakenote_sake_url(@sakenote_sake), params: { sakenote_sake: {  } }
    assert_redirected_to sakenote_sake_url(@sakenote_sake)
  end

  test "should destroy sakenote_sake" do
    assert_difference('Sakenote::Sake.count', -1) do
      delete sakenote_sake_url(@sakenote_sake)
    end

    assert_redirected_to sakenote_sakes_url
  end
end
