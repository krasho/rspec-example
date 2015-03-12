require 'rails_helper'

describe "Post pages", :type => :feature do 
	subject { page }
	describe "Home page" do 
		context "listing all posts" do 
			context "Listing all posts" do
			  #let!(:post1) { Post.create!(:title => "Post 1", :content => "Post number one") }
			  #let!(:post2) { Post.create!(:title => "Post 2", :content => "Hi there") }
			  #let!(:post3) { Post.create!(:title => "Post 3", :content => "RSpec rocks") }
			  
              #let!(:post1) { FactoryGirl.create(:post) }
              #let!(:post2) { FactoryGirl.create(:post) }
              #let!(:post3) { FactoryGirl.create(:post) }

			  #let(:posts)  { Post.all }
			  let!(:posts) { FactoryGirl.create_list(:post, 3) }

              before do
              	visit root_path
              end 
               

			  #it "should list all available post titles" do 
              #  posts.each do |post|
                	#page.should have_content post.title
              #  	expect(page).to have_content post.title
              #  end
  
			  #end

              #it "should list all available posts contents" do
			  #   posts.each do |post|
			        #page.should have_content post.content
			  #      expect(page).to have_content post.content
			  #   end
			  #end

			  it "should list all available posts contents" do 
			  	posts.each do |post|
			  		expect have_selector ".post_title", :text=>post.title
			  		expect have_selector ".post_content", :text=>post.content
			  	end
			  end

            end
		end	
	end
end