require "test_helper"


class UserTest < ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should be valid" do
    assert @user.valid?
  end
end
