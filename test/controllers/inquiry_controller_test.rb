require 'test_helper'

class InquiryControllerTest < ActionController::TestCase
  test "should get form" do
    get :form
    assert_response :success
  end

end
