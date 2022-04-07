require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url, as: :json
    assert_response :success
  end

  test "should create car" do
    assert_difference("Car.count") do
      post cars_url, params: { car: { colors: @car.colors, id: 'Test', make: @car.make, model: @car.model, photo: @car.photo, price: @car.price.to_i, range: @car.range } }, as: :json
    end

    assert_response :created
  end

  test "should show car" do
    get car_url(@car), as: :json
    assert_response :success
  end

  test "should select just by make" do
    get search_cars_url(make: 'Mercedes', order: 'desc'), as: :json, xhr: true
    assert_match "Mercedes", @response.body
    assert_response :success
  end
end
