require 'test_helper'

class PaymentControllerTest < ActionController::TestCase
  test "should get payment" do
    get :payment
    assert_response :success
  end

end
