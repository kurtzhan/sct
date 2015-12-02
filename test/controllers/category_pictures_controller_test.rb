require 'test_helper'

class CategoryPicturesControllerTest < ActionController::TestCase
  setup do
    @category_picture = category_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_picture" do
    assert_difference('CategoryPicture.count') do
      post :create, category_picture: { category_id: @category_picture.category_id, picture_id: @category_picture.picture_id }
    end

    assert_redirected_to category_picture_path(assigns(:category_picture))
  end

  test "should show category_picture" do
    get :show, id: @category_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_picture
    assert_response :success
  end

  test "should update category_picture" do
    patch :update, id: @category_picture, category_picture: { category_id: @category_picture.category_id, picture_id: @category_picture.picture_id }
    assert_redirected_to category_picture_path(assigns(:category_picture))
  end

  test "should destroy category_picture" do
    assert_difference('CategoryPicture.count', -1) do
      delete :destroy, id: @category_picture
    end

    assert_redirected_to category_pictures_path
  end
end
