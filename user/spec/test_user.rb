require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/user'

class TestUser < MiniTest::Test

  def test_user_in_assigned_role
    user = User.new

    user.assign_role('admin')

    assert user.in_role?('admin'), 'user is not in admin role'
  end

  def test_user_not_in_unassigned_role
    user = User.new

    assert !user.in_role?('admin'), 'user is in admin role'
  end
end
