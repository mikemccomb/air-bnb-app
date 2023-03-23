require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest

  test "create" do
    assert_difference "Review.count", 1 do
      post "/reviews.json", params: { rating: 5, comment: "Gorgeous, but we were invaded by aliens during our stay."}
      assert_response 200
    end
  end
  
end
