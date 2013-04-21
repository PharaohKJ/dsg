require 'test_helper'

class MtbAmongCardTypesControllerTest < ActionController::TestCase
  setup do
    @mtb_among_card_type = mtb_among_card_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtb_among_card_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtb_among_card_type" do
    assert_difference('MtbAmongCardType.count') do
      post :create, mtb_among_card_type: { mtb_card_id: @mtb_among_card_type.mtb_card_id, mtb_card_type_id: @mtb_among_card_type.mtb_card_type_id }
    end

    assert_redirected_to mtb_among_card_type_path(assigns(:mtb_among_card_type))
  end

  test "should show mtb_among_card_type" do
    get :show, id: @mtb_among_card_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtb_among_card_type
    assert_response :success
  end

  test "should update mtb_among_card_type" do
    put :update, id: @mtb_among_card_type, mtb_among_card_type: { mtb_card_id: @mtb_among_card_type.mtb_card_id, mtb_card_type_id: @mtb_among_card_type.mtb_card_type_id }
    assert_redirected_to mtb_among_card_type_path(assigns(:mtb_among_card_type))
  end

  test "should destroy mtb_among_card_type" do
    assert_difference('MtbAmongCardType.count', -1) do
      delete :destroy, id: @mtb_among_card_type
    end

    assert_redirected_to mtb_among_card_types_path
  end
end
