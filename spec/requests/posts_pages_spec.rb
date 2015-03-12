require 'rails_helper'

describe "Post pages", :type => :feature do 
	describe "Home page" do 
		context "listing all posts" do 
			context "Listing all posts" do
			  let!(:post1) { Post.create!(:title => "Post 1", :content => "Post number one") }
			  let!(:post2) { Post.create!(:title => "Post 2", :content => "Hi there") }
			  let!(:post3) { Post.create!(:title => "Post 3", :content => "RSpec rocks") }

			  it "should list all available post titles" do 
			  	visit root_path
                posts = Post.all
                posts.each do |post|
                	#page.should have_content post.title
                	expect(page).to have_content post.title
                end
  
			  end

              it "should list all available posts contents" do
			     visit root_path
			     posts = Post.all
			     posts.each do |post|
			        #page.should have_content post.content
			        expect(page).to have_content post.content
			     end
			  end

            end
		end	end
end