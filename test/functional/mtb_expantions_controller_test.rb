require 'test_helper'

class MtbExpantionsControllerTest < ActionController::TestCase
  setup do
    @mtb_expantion = mtb_expantions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtb_expantions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtb_expantion" do
    assert_difference('MtbExpantion.count') do
      post :create, mtb_expantion: { mtb_publisher_id: @mtb_expantion.mtb_publisher_id, name: @mtb_expantion.name, released_at: @mtb_expantion.released_at }
    end

    assert_redirected_to mtb_expantion_path(assigns(:mtb_expantion))
  end

  test "should show mtb_expantion" do
    get :show, id: @mtb_expantion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtb_expantion
    assert_response :success
  end

  test "should update mtb_expantion" do
    put :update, id: @mtb_expantion, mtb_expantion: { mtb_publisher_id: @mtb_expantion.mtb_publisher_id, name: @mtb_expantion.name, released_at: @mtb_expantion.released_at }
    assert_redirected_to mtb_expantion_path(assigns(:mtb_expantion))
  end

  test "should destroy mtb_expantion" do
    assert_difference('MtbExpantion.count', -1) do
      delete :destroy, id: @mtb_expantion
    end

    assert_redirected_to mtb_expantions_path
  end
end
