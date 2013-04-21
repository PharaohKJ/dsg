require 'test_helper'

class MtbPublishersControllerTest < ActionController::TestCase
  setup do
    @mtb_publisher = mtb_publishers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtb_publishers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtb_publisher" do
    assert_difference('MtbPublisher.count') do
      post :create, mtb_publisher: { name: @mtb_publisher.name }
    end

    assert_redirected_to mtb_publisher_path(assigns(:mtb_publisher))
  end

  test "should show mtb_publisher" do
    get :show, id: @mtb_publisher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtb_publisher
    assert_response :success
  end

  test "should update mtb_publisher" do
    put :update, id: @mtb_publisher, mtb_publisher: { name: @mtb_publisher.name }
    assert_redirected_to mtb_publisher_path(assigns(:mtb_publisher))
  end

  test "should destroy mtb_publisher" do
    assert_difference('MtbPublisher.count', -1) do
      delete :destroy, id: @mtb_publisher
    end

    assert_redirected_to mtb_publishers_path
  end
end
