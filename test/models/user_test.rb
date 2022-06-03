require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "#full_name returns first and last name capped and concatenated" do
    user = User.new(first_name: 'Boyan', last_name: 'jackson')
    assert_equal "Boyan Jackson", user.full_name
  end
end
