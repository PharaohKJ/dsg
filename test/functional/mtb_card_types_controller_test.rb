require 'test_helper'

class MtbCardTypesControllerTest < ActionController::TestCase
  setup do
    @mtb_card_type = mtb_card_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtb_card_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtb_card_type" do
    assert_difference('MtbCardType.count') do
      post :create, mtb_card_type: { name: @mtb_card_type.name }
    end

    assert_redirected_to mtb_card_type_path(assigns(:mtb_card_type))
  end

  test "should show mtb_card_type" do
    get :show, id: @mtb_card_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtb_card_type
    assert_response :success
  end

  test "should update mtb_card_type" do
    put :update, id: @mtb_card_type, mtb_card_type: { name: @mtb_card_type.name }
    assert_redirected_to mtb_card_type_path(assigns(:mtb_card_type))
  end

  test "should destroy mtb_card_type" do
    assert_difference('MtbCardType.count', -1) do
      delete :destroy, id: @mtb_card_type
    end

    assert_redirected_to mtb_card_types_path
  end
end
