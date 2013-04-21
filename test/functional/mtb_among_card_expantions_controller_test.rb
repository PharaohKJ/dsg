require 'test_helper'

class MtbAmongCardExpantionsControllerTest < ActionController::TestCase
  setup do
    @mtb_among_card_expantion = mtb_among_card_expantions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtb_among_card_expantions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtb_among_card_expantion" do
    assert_difference('MtbAmongCardExpantion.count') do
      post :create, mtb_among_card_expantion: { mtb_card_id: @mtb_among_card_expantion.mtb_card_id, mtb_expantion_id: @mtb_among_card_expantion.mtb_expantion_id, override_name: @mtb_among_card_expantion.override_name, override_text: @mtb_among_card_expantion.override_text }
    end

    assert_redirected_to mtb_among_card_expantion_path(assigns(:mtb_among_card_expantion))
  end

  test "should show mtb_among_card_expantion" do
    get :show, id: @mtb_among_card_expantion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtb_among_card_expantion
    assert_response :success
  end

  test "should update mtb_among_card_expantion" do
    put :update, id: @mtb_among_card_expantion, mtb_among_card_expantion: { mtb_card_id: @mtb_among_card_expantion.mtb_card_id, mtb_expantion_id: @mtb_among_card_expantion.mtb_expantion_id, override_name: @mtb_among_card_expantion.override_name, override_text: @mtb_among_card_expantion.override_text }
    assert_redirected_to mtb_among_card_expantion_path(assigns(:mtb_among_card_expantion))
  end

  test "should destroy mtb_among_card_expantion" do
    assert_difference('MtbAmongCardExpantion.count', -1) do
      delete :destroy, id: @mtb_among_card_expantion
    end

    assert_redirected_to mtb_among_card_expantions_path
  end
end
