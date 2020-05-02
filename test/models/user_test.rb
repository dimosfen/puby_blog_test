require 'test_helper'

class UserTest < ActiveSupport::TestCase
 def setup
 @user=User.new(name:"Example",email:"user@example.com",
 password:"foobar",password_confirmation:"foobar")
end

test "password shouild be prsent" do
  @user.password=@user.password_confirmation=" " *6
  assert_not @user.valid?
end
test "password shouild minimum" do
  @user.password=@user.password_confirmation="a" *5
  assert_not @user.valid?
end

end
end
