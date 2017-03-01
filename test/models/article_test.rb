require "test_helper"

class ArticleTest < ActiveSupport::TestCase
	def setup
		@user=User.create(username:"testacc", password: "testpass") 
		@article=@user.articles.build(title: "testing",text: "this is testing article")
	end
	test "article should be valid" do
		assert @article.valid?		
	end
	test "user_id should be present" do
		@article.user_id = nil
		assert_not @article.valid?
	end
	test "title should be present" do
		@article.title = ""
		assert_not @article.valid?
	end
	test "title should be 6 characters" do
		@article.title ="aaaaa"
		assert_not @article.valid?
	end
	test "title should be below 100 characters" do
		@article.title ="a"*101
		assert_not @article.valid?
	end
	test "text should be present" do
		@article.text =""
		assert_not @article.valid?
	end
	test "text should be 5 characters" do
		@article.text="aaaa"
		assert_not @article.valid?
	end
	test "text should be below 1000 characters" do
		@article.text ="a"*1001
		assert_not @article.valid?
	end
	
end	