require 'test_helper'

class Sakenote::MakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sakenote_maker = sakenote_makers(:one)
  end

  test "should get index" do
    get sakenote_makers_url
    assert_response :success
  end

  test "should get new" do
    get new_sakenote_maker_url
    assert_response :success
  end

  test "should create sakenote_maker" do
    assert_difference('Sakenote::Maker.count') do
      post sakenote_makers_url, params: { sakenote_maker: {  } }
    end

    assert_redirected_to sakenote_maker_url(Sakenote::Maker.last)
  end

  test "should show sakenote_maker" do
    get sakenote_maker_url(@sakenote_maker)
    assert_response :success
  end

  test "should get edit" do
    get edit_sakenote_maker_url(@sakenote_maker)
    assert_response :success
  end

  test "should update sakenote_maker" do
    patch sakenote_maker_url(@sakenote_maker), params: { sakenote_maker: {  } }
    assert_redirected_to sakenote_maker_url(@sakenote_maker)
  end

  test "should destroy sakenote_maker" do
    assert_difference('Sakenote::Maker.count', -1) do
      delete sakenote_maker_url(@sakenote_maker)
    end

    assert_redirected_to sakenote_makers_url
  end
end
