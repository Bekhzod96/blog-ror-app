require 'test_helper'
class  CategoriesControllerTest < ActionDispatch::IntegrationTest

	def setup
		@category = Category.create(name: "sports")
	end

	test 'should get categories index' do 
		get categories_path
		assert_response :success
	end

	test 'should gen new' do
		get new_category_path
		assert_response :success
	end


	test 'should get show' do
		get category_path(@category.id)
		assert_response :success
	end
end