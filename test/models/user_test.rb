require "test_helper"

class UserTest < ActiveSupport::TestCase
	def setup
		@user=User.new(username:"tesatacc",password:"testpass")
	end
	test "user should be valid" do 
		assert @user.valid?
	end
	test "username should be present" do
		@user.username=""
		assert_not @user.valid?
	end
	test "password should be present" do
		@user.password=""
		assert_not @user.valid?
	end
	test "username already exist" do
		dup_user=@user.dup
		dup_user.username=@user.username.upcase
		@user.save
		assert_not @user.valid?
	end
end