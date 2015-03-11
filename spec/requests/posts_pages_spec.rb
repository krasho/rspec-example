require 'rails_helper'

describe "Post pages" do 
	describe "Home page" do 
		context "listing all posts" do 
			context "Listing all posts" do
			  let!(:post1) { Post.create!(:title => "Post 1", :content => "Post number one") }
			  let!(:post2) { Post.create!(:title => "Post 2", :content => "Hi there") }
			  let!(:post3) { Post.create!(:title => "Post 3", :content => "RSpec rocks") }

			  it "should list all available post titles" do 
			  	visit root_path
			  end
		end
	end
end