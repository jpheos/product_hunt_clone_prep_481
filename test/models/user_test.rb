require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first_name and last_name" do

    u = User.new(first_name: 'jean', last_name: 'DUPONT')

    assert_equal u.full_name, 'Jean Dupont'
  end
end
