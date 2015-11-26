require 'test_helper'

class BoooksControllerTest < ActionController::TestCase
  setup do
    @boook = boooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boook" do
    assert_difference('Boook.count') do
      post :create, boook: { cd: @boook.cd, isbn: @boook.isbn, price: @boook.price, publish: @boook.publish, published: @boook.published, title: @boook.title }
    end

    assert_redirected_to boook_path(assigns(:boook))
  end

  test "should show boook" do
    get :show, id: @boook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boook
    assert_response :success
  end

  test "should update boook" do
    patch :update, id: @boook, boook: { cd: @boook.cd, isbn: @boook.isbn, price: @boook.price, publish: @boook.publish, published: @boook.published, title: @boook.title }
    assert_redirected_to boook_path(assigns(:boook))
  end

  test "should destroy boook" do
    assert_difference('Boook.count', -1) do
      delete :destroy, id: @boook
    end

    assert_redirected_to boooks_path
  end
end
