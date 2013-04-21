require 'test_helper'

class MtbCardsControllerTest < ActionController::TestCase
  setup do
    @mtb_card = mtb_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtb_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtb_card" do
    assert_difference('MtbCard.count') do
      post :create, mtb_card: { action: @mtb_card.action, buy: @mtb_card.buy, card: @mtb_card.card, coin: @mtb_card.coin, cost: @mtb_card.cost, jname: @mtb_card.jname, name: @mtb_card.name, need_pot: @mtb_card.need_pot, text: @mtb_card.text, victory: @mtb_card.victory, virtual_coin: @mtb_card.virtual_coin, vitory_token: @mtb_card.vitory_token }
    end

    assert_redirected_to mtb_card_path(assigns(:mtb_card))
  end

  test "should show mtb_card" do
    get :show, id: @mtb_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtb_card
    assert_response :success
  end

  test "should update mtb_card" do
    put :update, id: @mtb_card, mtb_card: { action: @mtb_card.action, buy: @mtb_card.buy, card: @mtb_card.card, coin: @mtb_card.coin, cost: @mtb_card.cost, jname: @mtb_card.jname, name: @mtb_card.name, need_pot: @mtb_card.need_pot, text: @mtb_card.text, victory: @mtb_card.victory, virtual_coin: @mtb_card.virtual_coin, vitory_token: @mtb_card.vitory_token }
    assert_redirected_to mtb_card_path(assigns(:mtb_card))
  end

  test "should destroy mtb_card" do
    assert_difference('MtbCard.count', -1) do
      delete :destroy, id: @mtb_card
    end

    assert_redirected_to mtb_cards_path
  end
end
