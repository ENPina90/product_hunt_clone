require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    # save_and_open_screenshot
    assert_selector "h1", text: "Awesome Products"
  end

  test "correct number of product cards" do
    visit root_url

    assert_selector ".card-product", count: Product.count
  end

  test "user can create a new product" do
    login_as users(:george)
    visit "products/new"
    # save_and_open_screenshot

    fill_in "product_name", with: 'Le Wagon'
    fill_in "product_tagline", with: 'Learn to code, change your life'
    # save_and_open_screenshot

    click_on "Create Product"
    # save_and_open_screenshot

    assert_equal root_path, page.current_path
    assert_text "Learn to code, change your life"
    save_and_open_screenshot

  end
end
