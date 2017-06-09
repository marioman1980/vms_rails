require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(user_forename: "James", user_surname: "Kam-Radcliffe", user_email: "james@gmail.com", company: "Test Company", username: "marioman1980", logo_url: "www.image.com/url", api_sk: "testsk", api_pk: "testpk")
	end
	
	test "User should be valid" do
		assert @user.valid?
	end
	
# Test for presence	
	test "forename should be present" do
		@user.user_forename = "    "
		assert_not @user.valid?	
	end
	test "surname should be present" do
		@user.user_surname = "    "
		assert_not @user.valid?	
	end	
	test "email should be present" do
		@user.user_email = "    "
		assert_not @user.valid?	
	end	
	test "username should be present" do
		@user.username = "    "
		assert_not @user.valid?	
	end
	test "secret key should be present" do
		@user.api_sk = "    "
		assert_not @user.valid?	
	end	
	test "public should be present" do
		@user.api_pk = "    "
		assert_not @user.valid?	
	end		
	
# Test lengths
	test "forename length" do
		@user.user_forename = "a" * 36
		assert_not @user.valid?		
	end
	test "surname length" do
		@user.user_surname = "a" * 36
		assert_not @user.valid?		
	end
	test "email length" do
		@user.user_email = "a" * 244 + "@example.com"
		assert_not @user.valid?		
	end
	test "username length" do
		@user.user_forename = "a" * 36
		assert_not @user.valid?		
	end
	test "secret key length" do
		@user.user_forename = "a" * 51
		assert_not @user.valid?		
	end
	test "public key length" do
		@user.user_forename = "a" * 51
		assert_not @user.valid?		
	end	
	
# Test formats
	test "forename has correct format" do
		@user.user_forename = "yydikd44j"
		assert_not @user.valid?		
	end
#	test "surname has correct format" do
#		@user.user_surname = "yyd3ikj"
#		assert_not @user.valid?		
#	end
	
	test "email has correct format" do
		@user.user_email = "yyd3ikj@dfgdfgcom"
		assert_not @user.valid?		
	end	
	
end
