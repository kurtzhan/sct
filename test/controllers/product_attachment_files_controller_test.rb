require 'test_helper'

class ProductAttachmentFilesControllerTest < ActionController::TestCase
  setup do
    @product_attachment_file = product_attachment_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_attachment_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_attachment_file" do
    assert_difference('ProductAttachmentFile.count') do
      post :create, product_attachment_file: { attachment_file_id: @product_attachment_file.attachment_file_id, product_id: @product_attachment_file.product_id }
    end

    assert_redirected_to product_attachment_file_path(assigns(:product_attachment_file))
  end

  test "should show product_attachment_file" do
    get :show, id: @product_attachment_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_attachment_file
    assert_response :success
  end

  test "should update product_attachment_file" do
    patch :update, id: @product_attachment_file, product_attachment_file: { attachment_file_id: @product_attachment_file.attachment_file_id, product_id: @product_attachment_file.product_id }
    assert_redirected_to product_attachment_file_path(assigns(:product_attachment_file))
  end

  test "should destroy product_attachment_file" do
    assert_difference('ProductAttachmentFile.count', -1) do
      delete :destroy, id: @product_attachment_file
    end

    assert_redirected_to product_attachment_files_path
  end
end
