require "application_system_test_case"

class ServiceImagesTest < ApplicationSystemTestCase
  setup do
    @service_image = service_images(:one)
  end

  test "visiting the index" do
    visit service_images_url
    assert_selector "h1", text: "Service Images"
  end

  test "creating a Service image" do
    visit service_images_url
    click_on "New Service Image"

    fill_in "Image", with: @service_image.image
    fill_in "Service", with: @service_image.service_id
    click_on "Create Service image"

    assert_text "Service image was successfully created"
    click_on "Back"
  end

  test "updating a Service image" do
    visit service_images_url
    click_on "Edit", match: :first

    fill_in "Image", with: @service_image.image
    fill_in "Service", with: @service_image.service_id
    click_on "Update Service image"

    assert_text "Service image was successfully updated"
    click_on "Back"
  end

  test "destroying a Service image" do
    visit service_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service image was successfully destroyed"
  end
end
