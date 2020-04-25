require 'test_helper'

class ServiceImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_image = service_images(:one)
  end

  test "should get index" do
    get service_images_url
    assert_response :success
  end

  test "should get new" do
    get new_service_image_url
    assert_response :success
  end

  test "should create service_image" do
    assert_difference('ServiceImage.count') do
      post service_images_url, params: { service_image: { image: @service_image.image, service_id: @service_image.service_id } }
    end

    assert_redirected_to service_image_url(ServiceImage.last)
  end

  test "should show service_image" do
    get service_image_url(@service_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_image_url(@service_image)
    assert_response :success
  end

  test "should update service_image" do
    patch service_image_url(@service_image), params: { service_image: { image: @service_image.image, service_id: @service_image.service_id } }
    assert_redirected_to service_image_url(@service_image)
  end

  test "should destroy service_image" do
    assert_difference('ServiceImage.count', -1) do
      delete service_image_url(@service_image)
    end

    assert_redirected_to service_images_url
  end
end
